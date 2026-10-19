# Shared

[![Build](https://github.com/falkoschumann/muspellheim-config-js/actions/workflows/build.yml/badge.svg)](https://github.com/falkoschumann/muspellheim-config-js/actions/workflows/build.yml)
[![NPM Version](https://img.shields.io/npm/v/%40muspellheim%2Feslint-config)](https://www.npmjs.com/package/@muspellheim/eslint-config)

Some shared ESLint configurations from my projects.

## Installation

```bash
npm install @muspellheim/eslint-config
```

## Usage

Create `eslint.config.js`:

```typescript
import { defineConfig } from "eslint/config";

import { base, react, sheriff } from "@naturheilpraxis/eslint-config";

const config = defineConfig([base, react, sheriff]);

export default config;
```
