export function SvgDefs() {
  return (
    <svg width="0" height="0" style={{ position: 'absolute' }} aria-hidden="true">
      <defs>
        {/* Dégradé principal bleu ciel */}
        <linearGradient id="lgSky" x1="0%" y1="0%" x2="100%" y2="100%">
          <stop offset="0%" stopColor="#4FC3F7" />
          <stop offset="100%" stopColor="#0E8FD6" />
        </linearGradient>
        {/* Dégradé encre profonde */}
        <linearGradient id="lgInk" x1="0%" y1="0%" x2="100%" y2="100%">
          <stop offset="0%" stopColor="#0E8FD6" />
          <stop offset="100%" stopColor="#0B2A42" />
        </linearGradient>
        {/* Alias hérités (anciens ids utilisés par l'admin/plateforme) */}
        <linearGradient id="lgGold" x1="0%" y1="0%" x2="100%" y2="100%">
          <stop offset="0%" stopColor="#4FC3F7" />
          <stop offset="100%" stopColor="#0E8FD6" />
        </linearGradient>
        <linearGradient id="lgPurp" x1="0%" y1="0%" x2="100%" y2="100%">
          <stop offset="0%" stopColor="#29A8E8" />
          <stop offset="100%" stopColor="#0A6BB0" />
        </linearGradient>
      </defs>
    </svg>
  );
}
