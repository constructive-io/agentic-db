# Change Log

All notable changes to this project will be documented in this file.
See [Conventional Commits](https://conventionalcommits.org) for commit guidelines.

# [1.2.0](https://github.com/constructive-io/agentic-db/compare/@agentic-db/cli@1.1.0...@agentic-db/cli@1.2.0) (2026-04-17)

### Features

- expand tests and align docs with real ORM/CLI behavior ([1c01d06](https://github.com/constructive-io/agentic-db/commit/1c01d06822985773ed212141853d573b2cdb1fb3))

# [1.1.0](https://github.com/constructive-io/agentic-db/compare/@agentic-db/cli@1.0.0...@agentic-db/cli@1.1.0) (2026-04-16)

**Note:** Version bump only for package @agentic-db/cli

# [1.0.0](https://github.com/constructive-io/agentic-db/compare/@agentic-db/cli@0.4.0...@agentic-db/cli@1.0.0) (2026-04-16)

**Note:** Version bump only for package @agentic-db/cli

# [0.4.0](https://github.com/constructive-io/agentic-db/compare/@agentic-db/cli@0.3.1...@agentic-db/cli@0.4.0) (2026-04-16)

**Note:** Version bump only for package @agentic-db/cli

## [0.3.1](https://github.com/constructive-io/agentic-db/compare/@agentic-db/cli@0.3.0...@agentic-db/cli@0.3.1) (2026-04-16)

**Note:** Version bump only for package @agentic-db/cli

# [0.3.0](https://github.com/constructive-io/agentic-db/compare/@agentic-db/cli@0.2.0...@agentic-db/cli@0.3.0) (2026-04-16)

**Note:** Version bump only for package @agentic-db/cli

# [0.2.0](https://github.com/constructive-io/agentic-db/compare/@agentic-db/cli@0.1.0...@agentic-db/cli@0.2.0) (2026-04-16)

**Note:** Version bump only for package @agentic-db/cli

# 0.1.0 (2026-04-16)

### Bug Fixes

- add --context flag to ask command, seed once in beforeAll, increase CLI timeout ([324c18f](https://github.com/constructive-io/agentic-db/commit/324c18f0f6e76073113286a72ac4e7711d76ab46))
- add explicit chunk table definitions for all 32 DataSearch tables ([b69b5f8](https://github.com/constructive-io/agentic-db/commit/b69b5f8cbc44b4ebca9e1111f298e875e946cc65))
- move chunks config inside embedding object, regenerate SDK with proper chunk tables ([5009bbe](https://github.com/constructive-io/agentic-db/commit/5009bbe013b80a3df3033e68f434ac7040948815))
- regenerate SDK with domain-based routing, fix membership defaults schema lookup ([dc9f254](https://github.com/constructive-io/agentic-db/commit/dc9f2547eebab788b308bec2fb2caf437beb4343))
- regenerate SDK/CLI/schema from correct agentic-db app_public schema ([d1ae382](https://github.com/constructive-io/agentic-db/commit/d1ae382fb6bd281a07c65f3041d8c86b4e1f9382))
- remove duplicate FK indexes from Phase 3, re-provision and re-export all artifacts ([da7f3ae](https://github.com/constructive-io/agentic-db/commit/da7f3ae20d433349c9f821db5a55547c5fff006a))
- rename remaining agent-db references to agentic-db ([fa26e3e](https://github.com/constructive-io/agentic-db/commit/fa26e3e937617c4d32c0daca73194898886d8d69))
- update CLI commands to use searchScore and correct model names ([8cc4380](https://github.com/constructive-io/agentic-db/commit/8cc4380238e1ca7aae6ee57d7a46ca4eb59b6ee3))
- update stale help text in ask.ts (tasks → agentTasks) ([fb968f9](https://github.com/constructive-io/agentic-db/commit/fb968f9174e17a462a784536daf9dd5dd907a6f2))
- use OR semantics for hybrid search (vector + fullTextSearch) ([fc949dd](https://github.com/constructive-io/agentic-db/commit/fc949ddc67e43dc0b3932960ac61119a18b2ca75))

### Features

- add contact_emails, contact_phones, contact_addresses tables ([650b4e0](https://github.com/constructive-io/agentic-db/commit/650b4e058cdfd8fac9e433014f578ccbd54d4a1a))
- add DataSearch + chunking to rules, skills, conversations, messages; re-provision and re-export all artifacts ([20168ce](https://github.com/constructive-io/agentic-db/commit/20168ce643ff603e77b911a8e8ee3b79d85c7f45))
- add export flow with orchestration scripts ([4da06c2](https://github.com/constructive-io/agentic-db/commit/4da06c215cd1ce41846eee04c411cb9cf69e7754))
- add pgpm export wrapper, RAG CLI commands, and rename packages to [@agentic-db](https://github.com/agentic-db) ([40b4186](https://github.com/constructive-io/agentic-db/commit/40b41862aa0ab81af430d8e0d1290d91e4c065d7))
- apply hybrid search to SDK CLI search command ([bdf762b](https://github.com/constructive-io/agentic-db/commit/bdf762bde604aa5f6502ab91ae8e5fde8bdaf5b2))
- generate SDK and CLI from provisioned schema ([cded2ac](https://github.com/constructive-io/agentic-db/commit/cded2ac6ac3a720bb1452b579844085599a310c0))
- re-export all artifacts after Data\* nodes migration (DataSearch, DataPostGIS, DataEmbedding) ([b072c3f](https://github.com/constructive-io/agentic-db/commit/b072c3fdc82661cc68d0ded8d565c108a0171995))
- re-export with clean underscore schema names (SIMPLE_SCHEMA_NAMES + USE_UNDERSCORES) ([be92dc5](https://github.com/constructive-io/agentic-db/commit/be92dc5cc9d11af524c6b4e88630a555f992e905))
- re-provision + regenerate SDK/CLI/export with OpenViking enhancements ([48dfb88](https://github.com/constructive-io/agentic-db/commit/48dfb8883973e94a46f30861b05532fc6730ae6e))
- re-provision and re-export with BM25 fully enabled (no SKIP_BM25) ([f03a62c](https://github.com/constructive-io/agentic-db/commit/f03a62cf6b8166022ffea19c20fc820e176fd6a1))
- re-provision database and regenerate all codegen ([78b058e](https://github.com/constructive-io/agentic-db/commit/78b058e72788cc150b3abd8fa69d043321ea6103))
- re-provision with postgres-plus:18 + BM25 indexes + codegen + export ([0dd4b28](https://github.com/constructive-io/agentic-db/commit/0dd4b2851157d73799b656a6f2f0a7e77f08efd0))
- re-provision with PR [#664](https://github.com/constructive-io/agentic-db/issues/664), add deploy/export scripts and CI workflow ([25a0069](https://github.com/constructive-io/agentic-db/commit/25a0069fb243853fca1951354946da5192d0a4ad))
- rename agent-db to agentic-db throughout codebase, use short directory names ([496acac](https://github.com/constructive-io/agentic-db/commit/496acac23a9ef0b08093fe02d34b01f6e2bc9611))
- reprovision agentic-db against latest constructive-db ([5f42408](https://github.com/constructive-io/agentic-db/commit/5f42408338e2f6ee99a4b8f82f9243fd63eb899a))
- upgrade to hybrid search, refactor SDK usage, and fix auth ([2477bfb](https://github.com/constructive-io/agentic-db/commit/2477bfbd7e43399a8c60e557634d5d9b48d8e59f))
