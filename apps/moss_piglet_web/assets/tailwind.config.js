const colors = require("tailwindcss/colors");

module.exports = {
  content: [
    "../lib/*_web/**/*.*ex",
    "./js/**/*.js",

    // We need to include the Petal dependency so the classes get picked up by JIT.
    "../deps/petal_components/**/*.*ex"
  ],
  darkMode: false,
  theme: {
    extend: {

      // Set these to your brand colors
      colors: {
        primary: colors.blue,
        secondary: colors.pink,
      },
    },
  },

  // Our form inputs depend on this plugin
  plugins: [require("@tailwindcss/forms")],
};