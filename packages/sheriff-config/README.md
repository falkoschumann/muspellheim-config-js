# Shared

[![Build](https://github.com/falkoschumann/muspellheim-config-js/actions/workflows/build.yml/badge.svg)](https://github.com/falkoschumann/muspellheim-config-js/actions/workflows/build.yml)
[![NPM Version](https://img.shields.io/npm/v/%40muspellheim%2Fsheriff-config)](https://www.npmjs.com/package/@muspellheim/sheriff-config)

Some shared Sheriff configurations from my projects.

## Installation

```bash
npm install @muspellheim/sheriff-config
```

## Usage

Create `sheriff.config.ts`:

```typescript
import { type SheriffConfig } from "@softarc/sheriff-core";

import { base } from "@naturheilpraxis/sheriff-config";

export const config: SheriffConfig = {
  ...base,
  // Vite imports the Rechnungsvorlage as string.
  ignoreFileExtensions: (defaults) => [...defaults, "html?raw"],
  entryPoints: {
    main: "src/main.ts",
  },
};
```

or for multiple components:

```typescript
import { type SheriffConfig } from "@softarc/sheriff-core";

import { components } from "@naturheilpraxis/sheriff-config/components";

export const config: SheriffConfig = {
  ...components,
  // Vite imports the Rechnungsvorlage as string.
  ignoreFileExtensions: (defaults) => [...defaults, "html?raw"],
  entryPoints: {
    main: "src/main/main.ts",
    migrate: "src/main/migrate.ts",
    preload: "src/preload/preload.ts",
    renderer: "src/renderer/main.tsx",
  },
};
```
