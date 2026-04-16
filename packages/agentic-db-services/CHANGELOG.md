# Change Log

All notable changes to this project will be documented in this file.
See [Conventional Commits](https://conventionalcommits.org) for commit guidelines.

# [0.3.0](https://github.com/constructive-io/agentic-db/compare/@agentic-db/services@0.2.0...@agentic-db/services@0.3.0) (2026-04-16)

### Bug Fixes

- add pgpm extension dependencies so pgpm install pulls them in ([5fc329b](https://github.com/constructive-io/agentic-db/commit/5fc329b1dc97b99c9a93fc7ea7a09449e2929486))

# [0.2.0](https://github.com/constructive-io/agentic-db/compare/@agentic-db/services@0.1.0...@agentic-db/services@0.2.0) (2026-04-16)

### Bug Fixes

- remove publishConfig.directory from pgpm SQL packages ([70b4e75](https://github.com/constructive-io/agentic-db/commit/70b4e7588497a7cce70c88c0f9fdf955c6ffdc08))

# 0.1.0 (2026-04-16)

### Bug Fixes

- add explicit chunk table definitions for all 32 DataSearch tables ([b69b5f8](https://github.com/constructive-io/agentic-db/commit/b69b5f8cbc44b4ebca9e1111f298e875e946cc65))
- add missing semicolon after last INSERT row in trigger.sql ([21b7212](https://github.com/constructive-io/agentic-db/commit/21b7212c99f38256698116aad1d3e7d528af65a2))
- move chunks config inside embedding object, regenerate SDK with proper chunk tables ([5009bbe](https://github.com/constructive-io/agentic-db/commit/5009bbe013b80a3df3033e68f434ac7040948815))
- regenerate SDK with domain-based routing, fix membership defaults schema lookup ([dc9f254](https://github.com/constructive-io/agentic-db/commit/dc9f2547eebab788b308bec2fb2caf437beb4343))
- remove duplicate FK indexes from Phase 3, re-provision and re-export all artifacts ([da7f3ae](https://github.com/constructive-io/agentic-db/commit/da7f3ae20d433349c9f821db5a55547c5fff006a))
- replace NULL with '{}' for NOT NULL fields/grant_privileges columns in secure_table_provision ([77ed32c](https://github.com/constructive-io/agentic-db/commit/77ed32cf1f31fb2decf189ffc18e4557db05e256))
- surgically remove codebase rows from services SQL without breaking INSERT syntax ([7905701](https://github.com/constructive-io/agentic-db/commit/7905701f6aca98d99cc35512b81a0863cc5c3994))

### Features

- add chunk tables for contacts and notes (re-provision + export) ([d374f84](https://github.com/constructive-io/agentic-db/commit/d374f84f84028d448a0c8fa721c11bc1d25c9e17))
- add contact_emails, contact_phones, contact_addresses tables ([650b4e0](https://github.com/constructive-io/agentic-db/commit/650b4e058cdfd8fac9e433014f578ccbd54d4a1a))
- add DataSearch + chunking to rules, skills, conversations, messages; re-provision and re-export all artifacts ([20168ce](https://github.com/constructive-io/agentic-db/commit/20168ce643ff603e77b911a8e8ee3b79d85c7f45))
- re-export all artifacts after Data\* nodes migration (DataSearch, DataPostGIS, DataEmbedding) ([b072c3f](https://github.com/constructive-io/agentic-db/commit/b072c3fdc82661cc68d0ded8d565c108a0171995))
- re-export all artifacts with header-based routing fix ([905ed34](https://github.com/constructive-io/agentic-db/commit/905ed347770686e096d60700ffcb64d05dd8a77f))
- re-export pgpm, schema, SDK, CLI with trips.tags GIN index fix ([cbc0e37](https://github.com/constructive-io/agentic-db/commit/cbc0e37b8bf414677b101502498e1ebfda7f99c0))
- re-provision and re-export with BM25 fully enabled (no SKIP_BM25) ([f03a62c](https://github.com/constructive-io/agentic-db/commit/f03a62cf6b8166022ffea19c20fc820e176fd6a1))
- re-provision database and regenerate all codegen ([78b058e](https://github.com/constructive-io/agentic-db/commit/78b058e72788cc150b3abd8fa69d043321ea6103))
- re-provision database without security and export clean pgpm workspace ([9b733a2](https://github.com/constructive-io/agentic-db/commit/9b733a22636cf5242e2d55b30c172ae4d0b9603a))
- re-provision with PR [#664](https://github.com/constructive-io/agentic-db/issues/664), add deploy/export scripts and CI workflow ([25a0069](https://github.com/constructive-io/agentic-db/commit/25a0069fb243853fca1951354946da5192d0a4ad))
- remove all grants/roles from blueprints and agentic-db-services ([9c57baf](https://github.com/constructive-io/agentic-db/commit/9c57baf0320707179a916d789a55f43dae6b7061))
- remove all security/RLS from provision blueprints and agentic-db-services ([3c6880b](https://github.com/constructive-io/agentic-db/commit/3c6880bd8cf87bbbf2ac24eecca7cd2637be3751))
- remove social fields from contacts table ([303ecb9](https://github.com/constructive-io/agentic-db/commit/303ecb9c985e6f7d840d9c8525f8cba34649af73))
- reprovision agentic-db against latest constructive-db ([5f42408](https://github.com/constructive-io/agentic-db/commit/5f42408338e2f6ee99a4b8f82f9243fd63eb899a))
- use bare database.create() with zero modules, re-provision and re-export clean pgpm workspace ([2227b7c](https://github.com/constructive-io/agentic-db/commit/2227b7c90e8963294691f2de92c8358bb5bc5784))
- use DataEmbedding chunks plugin instead of manual chunk tables ([c7674d1](https://github.com/constructive-io/agentic-db/commit/c7674d1e3f8a5d61e85e07200abf1f8eac4fd83f))
