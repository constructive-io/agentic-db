# Change Log

All notable changes to this project will be documented in this file.
See [Conventional Commits](https://conventionalcommits.org) for commit guidelines.

# [0.3.0](https://github.com/constructive-io/agentic-db/compare/@agentic-db/sdk@0.2.0...@agentic-db/sdk@0.3.0) (2026-04-16)

**Note:** Version bump only for package @agentic-db/sdk

# [0.2.0](https://github.com/constructive-io/agentic-db/compare/@agentic-db/sdk@0.1.0...@agentic-db/sdk@0.2.0) (2026-04-16)

**Note:** Version bump only for package @agentic-db/sdk

# 0.1.0 (2026-04-16)

### Bug Fixes

- add explicit chunk table definitions for all 32 DataSearch tables ([b69b5f8](https://github.com/constructive-io/agentic-db/commit/b69b5f8cbc44b4ebca9e1111f298e875e946cc65))
- move chunks config inside embedding object, regenerate SDK with proper chunk tables ([5009bbe](https://github.com/constructive-io/agentic-db/commit/5009bbe013b80a3df3033e68f434ac7040948815))
- regenerate SDK with domain-based routing, fix membership defaults schema lookup ([dc9f254](https://github.com/constructive-io/agentic-db/commit/dc9f2547eebab788b308bec2fb2caf437beb4343))
- regenerate SDK/CLI/schema from correct agentic-db app_public schema ([d1ae382](https://github.com/constructive-io/agentic-db/commit/d1ae382fb6bd281a07c65f3041d8c86b4e1f9382))
- remove duplicate FK indexes from Phase 3, re-provision and re-export all artifacts ([da7f3ae](https://github.com/constructive-io/agentic-db/commit/da7f3ae20d433349c9f821db5a55547c5fff006a))

### Features

- add contact_emails, contact_phones, contact_addresses tables ([650b4e0](https://github.com/constructive-io/agentic-db/commit/650b4e058cdfd8fac9e433014f578ccbd54d4a1a))
- add DataSearch + chunking to rules, skills, conversations, messages; re-provision and re-export all artifacts ([20168ce](https://github.com/constructive-io/agentic-db/commit/20168ce643ff603e77b911a8e8ee3b79d85c7f45))
- add export flow with orchestration scripts ([4da06c2](https://github.com/constructive-io/agentic-db/commit/4da06c215cd1ce41846eee04c411cb9cf69e7754))
- re-export all artifacts after Data\* nodes migration (DataSearch, DataPostGIS, DataEmbedding) ([b072c3f](https://github.com/constructive-io/agentic-db/commit/b072c3fdc82661cc68d0ded8d565c108a0171995))
- re-provision and re-export with BM25 fully enabled (no SKIP_BM25) ([f03a62c](https://github.com/constructive-io/agentic-db/commit/f03a62cf6b8166022ffea19c20fc820e176fd6a1))
- re-provision database and regenerate all codegen ([78b058e](https://github.com/constructive-io/agentic-db/commit/78b058e72788cc150b3abd8fa69d043321ea6103))
- re-provision with PR [#664](https://github.com/constructive-io/agentic-db/issues/664), add deploy/export scripts and CI workflow ([25a0069](https://github.com/constructive-io/agentic-db/commit/25a0069fb243853fca1951354946da5192d0a4ad))
- regenerate GraphQL SDK and remove all entityId references from tests and code ([eb5531d](https://github.com/constructive-io/agentic-db/commit/eb5531dd2442220ce3db2e8590e0bfc821c60280))
- rename agent-db to agentic-db throughout codebase, use short directory names ([496acac](https://github.com/constructive-io/agentic-db/commit/496acac23a9ef0b08093fe02d34b01f6e2bc9611))
- reprovision agentic-db against latest constructive-db ([5f42408](https://github.com/constructive-io/agentic-db/commit/5f42408338e2f6ee99a4b8f82f9243fd63eb899a))
