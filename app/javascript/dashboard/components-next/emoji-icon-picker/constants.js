// Prefix that turns a stored icon name (e.g. "rocket-line") into a class.
// Swapping icon libraries means changing this and the curated set only.
export const ICON_PREFIX = 'i-ri-';

export const ICON_STYLE = {
  LINE: 'line',
  FILL: 'fill',
};

// Icon values are ascii names (e.g. "rocket-line"); emoji are non-ascii.
export const isIconValue = value =>
  typeof value === 'string' && /^[a-z][a-z0-9-]*$/.test(value);

export const iconClassFor = value =>
  value.startsWith(ICON_PREFIX) ? value : `${ICON_PREFIX}${value}`;

export const ICON_COLORS = [
  { name: 'SLATE', value: '#1571D3' },
  { name: 'RED', value: '#EA4B49' },
  { name: 'ORANGE', value: '#9DAB00' },
  { name: 'AMBER', value: '#B0C000' },
  { name: 'GREEN', value: '#5ABE73' },
  { name: 'TEAL', value: '#55A1FF' },
  { name: 'BLUE', value: '#3187EA' },
  { name: 'INDIGO', value: '#237BDE' },
  { name: 'VIOLET', value: '#2A81E4' },
  { name: 'PINK', value: '#F1524F' },
];

export const DEFAULT_ICON_COLOR = '#3187EA';

export const PICKER_MODE = {
  BOTH: 'both',
  EMOJI: 'emoji',
};

export const PICKER_TAB = {
  ICONS: 'icons',
  EMOJIS: 'emojis',
};

/* innagent: hexes derivados */
