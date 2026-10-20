# Shared

[![Build](https://github.com/falkoschumann/muspellheim-config-js/actions/workflows/build.yml/badge.svg)](https://github.com/falkoschumann/muspellheim-config-js/actions/workflows/build.yml)
[![NPM Version](https://img.shields.io/npm/v/%40muspellheim%2Ftypescript-config)](https://www.npmjs.com/package/@muspellheim/typescript-config)

Some shared TypeScript configurations from my projects:

- `@muspellheim/typescript-config/tsconfig.base.json`
- `@muspellheim/typescript-config/tsconfig.bun.json`
- `@muspellheim/typescript-config/tsconfig.electron-preload.json`
- `@muspellheim/typescript-config/tsconfig.node.json`
- `@muspellheim/typescript-config/tsconfig.web.json`

## Installation

```bash
npm install @muspellheim/typescript-config
```

## Usage

Create `tsconfig.json`:

```json
{
  "files": [],
  "references": [
    { "path": "./tsconfig.backend.json" },
    { "path": "./tsconfig.frontend.json" }
  ]
}
```

Create `tsconfig.backend.json`:

```json
{
  "extends": "@muspellheim/typescript-config/tsconfig.node.json",
  "compilerOptions": {
    "composite": true,
    "tsBuildInfoFile": "./node_modules/.cache/tsconfig.backend.tsbuildinfo"
  },
  "include": ["src/backend/**/*.ts", "src/shared/**/*.ts"]
}
```

Create `tsconfig.frontend.json`:

```json
{
  "extends": "@muspellheim/typescript-config/tsconfig.web.json",
  "compilerOptions": {
    "composite": true,
    "types": ["vite/client"],
    "tsBuildInfoFile": "./node_modules/.cache/tsconfig.frontend.tsbuildinfo"
  },
  "include": [
    "src/frontend/**/*.ts",
    "src/frontend/**/*.tsx",
    "src/shared/**/*.ts"
  ],
  "exclude": ["src/shared/**/*.test.ts"]
}
```
