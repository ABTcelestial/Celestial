'use client';
import { Canvas, useFrame } from '@react-three/fiber';
import { RoundedBox, Edges, Html } from '@react-three/drei';
import { useMemo, useRef } from 'react';
import * as THREE from 'three';

/* ============================================================
   « L'Assemblage » — hero 3D
   Des modules de verre (Stock, Paie, Caisse, Factures, Compta)
   flottent éparpillés, se relient par des filaments lumineux,
   puis s'assemblent en un système unifié : l'ERP.
   ============================================================ */

const CYCLE = 16; // secondes pour un cycle complet

type ModuleDef = {
  label: string;
  scattered: [number, number, number];
  assembled: [number, number, number];
  seed: number;
};

const MODULES: ModuleDef[] = [
  { label: 'Stock', scattered: [-3.6, 1.7, -0.6], assembled: [-1.08, 0, 0], seed: 0.7 },
  { label: 'Paie', scattered: [3.2, 2.2, -1.2], assembled: [1.08, 0, 0], seed: 2.1 },
  { label: 'Caisse', scattered: [-2.8, -1.6, 0.6], assembled: [0, 1.08, 0], seed: 3.6 },
  { label: 'Factures', scattered: [3.4, -1.3, 0.2], assembled: [0, -1.08, 0], seed: 5.2 },
  { label: 'Compta', scattered: [0.3, 2.9, 0.9], assembled: [0, 0, 0], seed: 6.8 },
];

const smoothstep = (a: number, b: number, x: number) => {
  const t = Math.min(1, Math.max(0, (x - a) / (b - a)));
  return t * t * (3 - 2 * t);
};

/** Facteur d'assemblage 0→1 selon la position dans le cycle */
function assembleFactor(time: number) {
  const t = (time % CYCLE) / CYCLE;
  return smoothstep(0.16, 0.42, t) * (1 - smoothstep(0.8, 0.97, t));
}

function ModuleCube({ def, positions, index }: { def: ModuleDef; positions: THREE.Vector3[]; index: number }) {
  const group = useRef<THREE.Group>(null);
  const labelRef = useRef<HTMLDivElement>(null);

  useFrame(({ clock }) => {
    const g = group.current;
    if (!g) return;
    const time = clock.elapsedTime;
    const f = assembleFactor(time);

    // dérive flottante (forte quand éparpillé, nulle quand assemblé)
    const drift = 1 - f;
    const dx = Math.sin(time * 0.5 + def.seed) * 0.25 * drift;
    const dy = Math.cos(time * 0.42 + def.seed * 1.7) * 0.3 * drift;

    g.position.set(
      THREE.MathUtils.lerp(def.scattered[0], def.assembled[0], f) + dx,
      THREE.MathUtils.lerp(def.scattered[1], def.assembled[1], f) + dy,
      THREE.MathUtils.lerp(def.scattered[2], def.assembled[2], f),
    );
    g.rotation.x = (1 - f) * Math.sin(time * 0.3 + def.seed) * 0.3;
    g.rotation.y = (1 - f) * Math.cos(time * 0.25 + def.seed) * 0.4;

    positions[index].copy(g.position);

    // étiquette visible quand éparpillé, fondue quand assemblé
    if (labelRef.current) labelRef.current.style.opacity = String(Math.max(0, 1 - f * 1.6));
  });

  return (
    <group ref={group}>
      <RoundedBox args={[1, 1, 1]} radius={0.13} smoothness={4}>
        <meshPhysicalMaterial
          color="#F2FAFF"
          transparent
          opacity={0.88}
          roughness={0.22}
          metalness={0.05}
          clearcoat={0.7}
          clearcoatRoughness={0.2}
          emissive="#BDE7FB"
          emissiveIntensity={0.12}
        />
        <Edges scale={1.001} color="#4FC3F7" />
      </RoundedBox>
      <Html center distanceFactor={9} zIndexRange={[20, 0]}>
        <div
          ref={labelRef}
          style={{
            padding: '5px 13px',
            borderRadius: 999,
            background: 'rgba(255,255,255,0.85)',
            border: '1px solid rgba(14,143,214,0.25)',
            color: '#0A6BB0',
            fontFamily: 'var(--font-display, Outfit, sans-serif)',
            fontSize: 13,
            fontWeight: 600,
            whiteSpace: 'nowrap',
            pointerEvents: 'none',
            transition: 'opacity 0.4s ease',
            boxShadow: '0 4px 14px rgba(10,107,176,0.12)',
          }}
        >
          {def.label}
        </div>
      </Html>
    </group>
  );
}

/** Filaments lumineux reliant chaque module au cœur */
function Filaments({ positions }: { positions: THREE.Vector3[] }) {
  const lines = useRef<THREE.LineSegments>(null);
  const geometry = useMemo(() => {
    const geo = new THREE.BufferGeometry();
    geo.setAttribute('position', new THREE.BufferAttribute(new Float32Array(MODULES.length * 2 * 3), 3));
    return geo;
  }, []);

  useFrame(({ clock }) => {
    const seg = lines.current;
    if (!seg) return;
    const f = assembleFactor(clock.elapsedTime);
    const attr = seg.geometry.getAttribute('position') as THREE.BufferAttribute;
    positions.forEach((p, i) => {
      attr.setXYZ(i * 2, p.x, p.y, p.z);
      attr.setXYZ(i * 2 + 1, 0, 0, 0);
    });
    attr.needsUpdate = true;
    const mat = seg.material as THREE.LineBasicMaterial;
    // visibles surtout pendant la convergence
    mat.opacity = 0.12 + f * 0.4;
  });

  return (
    <lineSegments ref={lines} geometry={geometry}>
      <lineBasicMaterial color="#29A8E8" transparent opacity={0.2} />
    </lineSegments>
  );
}

/** Particules de données voyageant le long des filaments vers le cœur */
function DataParticles({ positions }: { positions: THREE.Vector3[] }) {
  const refs = useRef<(THREE.Mesh | null)[]>([]);

  useFrame(({ clock }) => {
    const time = clock.elapsedTime;
    const f = assembleFactor(time);
    MODULES.forEach((m, i) => {
      const mesh = refs.current[i];
      if (!mesh) return;
      const progress = (time * 0.45 + m.seed) % 1;
      mesh.position.lerpVectors(positions[i], new THREE.Vector3(0, 0, 0), progress);
      const mat = mesh.material as THREE.MeshBasicMaterial;
      mat.opacity = (0.25 + f * 0.75) * Math.sin(progress * Math.PI);
    });
  });

  return (
    <>
      {MODULES.map((m, i) => (
        <mesh key={m.label} ref={(el) => { refs.current[i] = el; }}>
          <sphereGeometry args={[0.05, 12, 12]} />
          <meshBasicMaterial color="#4FC3F7" transparent opacity={0.6} />
        </mesh>
      ))}
    </>
  );
}

/** Cœur ERP : apparaît quand les modules s'assemblent */
function Core() {
  const mesh = useRef<THREE.Mesh>(null);
  const light = useRef<THREE.PointLight>(null);
  const labelRef = useRef<HTMLDivElement>(null);

  useFrame(({ clock }) => {
    const time = clock.elapsedTime;
    const f = assembleFactor(time);
    if (mesh.current) {
      const pulse = 1 + Math.sin(time * 2.2) * 0.06;
      mesh.current.scale.setScalar(Math.max(0.001, f * 0.55 * pulse));
      mesh.current.rotation.y = time * 0.6;
      (mesh.current.material as THREE.MeshStandardMaterial).emissiveIntensity = 0.6 + f * 0.8;
    }
    if (light.current) light.current.intensity = f * 14;
    if (labelRef.current) labelRef.current.style.opacity = String(smoothstep(0.75, 1, f));
  });

  return (
    <group>
      <mesh ref={mesh}>
        <octahedronGeometry args={[1, 0]} />
        <meshStandardMaterial color="#29A8E8" emissive="#4FC3F7" emissiveIntensity={1} roughness={0.2} />
      </mesh>
      <pointLight ref={light} color="#4FC3F7" intensity={0} distance={7} />
      <Html center distanceFactor={9} zIndexRange={[30, 0]} position={[0, -2.1, 0]}>
        <div
          ref={labelRef}
          style={{
            padding: '7px 18px',
            borderRadius: 999,
            background: 'linear-gradient(120deg, #4FC3F7, #0E8FD6)',
            color: '#FFFFFF',
            fontFamily: 'var(--font-display, Outfit, sans-serif)',
            fontSize: 14,
            fontWeight: 700,
            letterSpacing: '0.06em',
            whiteSpace: 'nowrap',
            pointerEvents: 'none',
            opacity: 0,
            transition: 'opacity 0.5s ease',
            boxShadow: '0 8px 24px rgba(14,143,214,0.35)',
          }}
        >
          ✦ Un seul système
        </div>
      </Html>
    </group>
  );
}

/** Groupe racine : parallaxe souris + lente rotation une fois assemblé */
function Scene() {
  const outer = useRef<THREE.Group>(null);
  const inner = useRef<THREE.Group>(null);
  const positions = useMemo(() => MODULES.map(() => new THREE.Vector3()), []);

  useFrame(({ clock, pointer }, delta) => {
    const f = assembleFactor(clock.elapsedTime);
    if (outer.current) {
      outer.current.rotation.y = THREE.MathUtils.lerp(outer.current.rotation.y, pointer.x * 0.16, 0.04);
      outer.current.rotation.x = THREE.MathUtils.lerp(outer.current.rotation.x, -pointer.y * 0.1, 0.04);
    }
    if (inner.current) inner.current.rotation.y += delta * 0.12 * f;
  });

  return (
    <group ref={outer}>
      <group ref={inner}>
        {MODULES.map((def, i) => (
          <ModuleCube key={def.label} def={def} positions={positions} index={i} />
        ))}
        <Filaments positions={positions} />
        <DataParticles positions={positions} />
        <Core />
      </group>
    </group>
  );
}

export default function Assemblage() {
  return (
    <Canvas
      dpr={[1, 1.75]}
      camera={{ position: [0, 0.5, 9], fov: 40 }}
      gl={{ antialias: true, alpha: true }}
      style={{ background: 'transparent' }}
    >
      <ambientLight intensity={1.1} />
      <directionalLight position={[4, 6, 5]} intensity={1.3} color="#FFFFFF" />
      <directionalLight position={[-5, -2, 3]} intensity={0.4} color="#BDE7FB" />
      <Scene />
    </Canvas>
  );
}
