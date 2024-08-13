/** @type {import('tailwindcss').Config} */
export default {
  content: [
    "./src/**/*.{js,jsx,ts,tsx}",
  ],
  theme: {
    extend: {
      colors: {
        
        gray: '#F2F2F2', 
        textgray:'#7E8689',
        searchgray: '#E6EAED',
        blue:'#0047AD'

      },
        fontFamily: {
        'noto': ['Noto Sans KR'], 
      },

      fontWeight: {
        'regular': 400,
      },
      fontSize: {
        'small': '10px',
        'base': '14px', 
      },
    },
  },
  plugins: [],
}
