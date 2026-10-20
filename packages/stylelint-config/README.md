# Shared

[![Build](https://github.com/falkoschumann/muspellheim-config-js/actions/workflows/build.yml/badge.svg)](https://github.com/falkoschumann/muspellheim-config-js/actions/workflows/build.yml)
[![NPM Version](https://img.shields.io/npm/v/%40muspellheim%2Fstylelint-config)](https://www.npmjs.com/package/@muspellheim/stylelint-config)

Some shared Stylelint configurations from my projects.

## Installation

```bash
npm install @muspellheim/stylelint-config
```

## Usage

Create `stylelint.config.js`:

```typescript
import { base } from "@muspellheim/stylelint-config";

export default base;
```

or for SCSS:

```typescript
import { scss } from "@muspellheim/stylelint-config";

export default scss;
```
