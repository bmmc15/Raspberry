# Create a Standalone version on the online PC (PC A)


OBS: this is just an example.

## Steps:

- \$ mkdir my-project
- \$ cd my-project
- \$ npm init -y
- \$ npm install typescript @solana/web3.js webpack webpack-cli

1. Create a new TypeScript file, e.g., balanceChecker.ts
2. Create a Webpack configuration file named webpack.config.js

```javascript
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
```

3. In your project directory, create a new file named tsconfig.json.

```json
{
  "compilerOptions": {
    "module": "commonjs",
    "target": "es5",
    "lib": ["es6"],
    "strict": true,
    "esModuleInterop": true
  },
  "include": ["**/*.ts"]
}
```

4. Open a terminal in the project directory and run the following command to bundle your TypeScript code using Webpack:

- \$ npx webpack

5. Transfer the entire project directory (including the dist folder) from PC A to PC B using a USB pen drive or any other method.

## On PC B (without internet access):

1. Plug the USB pen drive into PC B.
2. Open a terminal on PC B and navigate to the project directory.
3. Install Node.js and npm on PC B if they are not already installed.
4. Run the bundled JavaScript file using Node.js:

- \$ node dist/balanceChecker.js
