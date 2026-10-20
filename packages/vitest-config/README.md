# Shared

[![Build](https://github.com/falkoschumann/muspellheim-config-js/actions/workflows/build.yml/badge.svg)](https://github.com/falkoschumann/muspellheim-config-js/actions/workflows/build.yml)
[![NPM Version](https://img.shields.io/npm/v/%40muspellheim%2Fvitest-config)](https://www.npmjs.com/package/@muspellheim/vitest-config)

Some shared Vitest configurations from my projects.

## Installation

```bash
npm install @muspellheim/vitest-config
```

## Usage

Create `vitest.config.js`:

```typescript
import { base } from "@muspellheim/vitest-config";
import { defineConfig, mergeConfig } from "vitest/config";

export default mergeConfig(
  base,
  defineConfig({
    test: {
      projects: [
        {
          extends: true,
          test: {
            name: "main",
            environment: "node",
            include: ["src/{backend,shared}/**/*.test.ts"],
          },
        },
        {
          extends: true,
          test: {
            name: "renderer",
            environment: "jsdom",
            include: ["src/frontend/**/*.test.{ts,tsx}"],
          },
        },
      ],
    },
  }),
);
```
