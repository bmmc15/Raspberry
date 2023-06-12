const path = require('path')

module.exports = {
  entry: './balanceChecker.ts',
  mode: 'production',
  target: 'node',
  resolve: {
    extensions: ['.ts', '.js'],
  },
  module: {
    rules: [
      {
        test: /\.ts$/,
        use: 'ts-loader',
        exclude: /node_modules/,
      },
    ],
  },
  output: {
    filename: 'balanceChecker.js',
    path: path.resolve(__dirname, 'dist'),
  },
}
