import aspectRatio from '@tailwindcss/aspect-ratio';

export default {
  content: ['./src/**/*.{html,js,svelte,ts}'],
  theme: {
    extend: {
      fontFamily: {
        sans: ['Outfit Variable', 'sans-serif'],
      },
      colors: {
        background: '#0F0F15',
        foreground: '#FFFFFF',
        primary: '#7EBBE5',
        secondary: '#968CA8',
        neutral: '#8B9297',
        error: '#FF5449',
      },
    },
  },
  plugins: [aspectRatio],
};
