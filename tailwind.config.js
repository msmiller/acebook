const colors = require('tailwindcss/colors')
const defaultTheme = require('tailwindcss/defaultTheme')

// module.exports = {
//   content: [
//     './app/views/**/*.html.erb',
//     './app/helpers/**/*.rb',
//     './app/javascript/**/*.js'
//   ]
// }

module.exports = {
  mode: 'jit',
//  purge: [
//    './app/views/**/*.html.erb',
//    './app/components/**/*.html.erb',
//    './app/helpers/**/*.rb',
//    './app/assets/stylesheets/*.scss',
//    './app/javascript/**/*.js'
//  ],
  content: [
    './app/views/**/*.html.erb',
    './app/components/**/*.html.erb',
    './app/components/**/**/*.html.erb',
    './app/components/**/*.rb',
    './app/components/**/**/*.rb',
    './app/helpers/**/*.rb',
    './app/assets/stylesheets/*.scss',
    './app/assets/stylesheets/**/*.css',
    './app/javascript/**/*.js'
  ],
    safelist: [
    'grid-cols-5', 'grid-cols-6',
    {
      pattern: /(bg|text|border)-(red|green|blue|yellow|amber|teal|cyan|rose|gray|stone|slate|purple|emerald|orange)-(50|100|200|300|400|500|600|700|800|900)/
    }
  ],
  plugins: [
    require('@tailwindcss/line-clamp'),
    require('@tailwindcss/forms'),
    require('@tailwindcss/typography'),
    require('@tailwindcss/aspect-ratio'),
    require('tailwindcss-opentype'),
    require('tailwind-scrollbar'),
  ],

}
