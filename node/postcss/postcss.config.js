module.exports = {
  plugins: [
    require("postcss-import")({
      filter: (path) => {
        return !path.match(/\.(ttf|woff|woff2|eot)$/);
      },
    }),
    require("autoprefixer"),
    require("cssnano")({
      preset: "default",
    }),
  ],
};