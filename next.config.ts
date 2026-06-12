import type { NextConfig } from "next";

const nextConfig: NextConfig = {
  // Verrouille la racine du projet : sans ça, un lockfile parasite dans un
  // dossier parent fait pointer Turbopack sur tout "Celestial Projects".
  turbopack: {
    root: __dirname,
  },
};

export default nextConfig;
