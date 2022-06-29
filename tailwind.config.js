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
  plugins: [
    require('@tailwindcss/line-clamp'),
    require('@tailwindcss/forms'),
    require('@tailwindcss/typography'),
    require('@tailwindcss/aspect-ratio'),
    require('tailwindcss-opentype'),
    require('tailwind-scrollbar'),
  ],

}
