/** @type {import('tailwindcss').Config} */
export default {
  content: [
    "./src/**/*.{js,jsx,ts,tsx}",
  ],
  theme: {
    extend: {
      colors: {
        gray: '#F2F2F2', 
      },
        fontFamily: {
        'noto': ['Noto Sans KR'], 
      },
      fontSize: {
        'base': '14px', 
      },
    },
  },
  plugins: [],
}