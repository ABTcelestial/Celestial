export function LogoMark({ size = 34 }: { size?: number }) {
  return (
    <svg className="logo-mark" width={size} height={size} viewBox="0 0 40 40" fill="none">
      <circle cx="20" cy="20" r="18.5" stroke="url(#lgPurp)" strokeWidth="1.4" opacity="0.55" />
      <ellipse cx="20" cy="20" rx="18.5" ry="7" stroke="url(#lgGold)" strokeWidth="1.1" opacity="0.5" transform="rotate(-28 20 20)" />
      <path d="M20 6 L22.6 17.4 L34 20 L22.6 22.6 L20 34 L17.4 22.6 L6 20 L17.4 17.4 Z" fill="url(#lgGold)" />
      <circle cx="31" cy="11" r="1.5" fill="#F4D06A" />
    </svg>
  );
}
