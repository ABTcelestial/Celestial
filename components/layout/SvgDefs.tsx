export function SvgDefs() {
  return (
    <svg width="0" height="0" style={{ position: 'absolute' }}>
      <defs>
        <linearGradient id="lgGold" x1="0" y1="0" x2="40" y2="40">
          <stop offset="0" stopColor="#F4D06A" />
          <stop offset="1" stopColor="#C9A84C" />
        </linearGradient>
        <linearGradient id="lgPurp" x1="0" y1="0" x2="40" y2="40">
          <stop offset="0" stopColor="#8B3FE0" />
          <stop offset="1" stopColor="#1A237E" />
        </linearGradient>
      </defs>
    </svg>
  );
}
