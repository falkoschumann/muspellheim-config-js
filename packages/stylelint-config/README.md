# Shared

[![Build](https://github.com/falkoschumann/muspellheim-config-js/actions/workflows/build.yml/badge.svg)](https://github.com/falkoschumann/muspellheim-config-js/actions/workflows/build.yml)
[![NPM Version](https://img.shields.io/npm/v/%40muspellheim%2Fstylelint-config)](https://www.npmjs.com/package/@muspellheim/stylelint-config)

Some shared Stylelint configurations from my projects.

## Installation

```bash
npm install --save-dev @muspellheim/stylelint-config

# add peer dependencies
npm install --save-dev stylelint@17
```

## Usage

Provided configurations:

- `base`
- `scss`

Create `stylelint.config.js`:

```javascript
import { base } from "@muspellheim/stylelint-config";

export default base;
```

or for SCSS:

```javascript
import { scss } from "@muspellheim/stylelint-config";

export default scss;
```
