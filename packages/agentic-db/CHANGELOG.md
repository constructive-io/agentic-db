# Change Log

All notable changes to this project will be documented in this file.
See [Conventional Commits](https://conventionalcommits.org) for commit guidelines.

# [1.1.0](https://github.com/constructive-io/agentic-db/compare/agentic-db@1.0.0...agentic-db@1.1.0) (2026-04-16)

**Note:** Version bump only for package agentic-db

# [1.0.0](https://github.com/constructive-io/agentic-db/compare/agentic-db@0.4.0...agentic-db@1.0.0) (2026-04-16)

**Note:** Version bump only for package agentic-db

# [0.4.0](https://github.com/constructive-io/agentic-db/compare/agentic-db@0.3.2...agentic-db@0.4.0) (2026-04-16)

**Note:** Version bump only for package agentic-db

## [0.3.2](https://github.com/constructive-io/agentic-db/compare/agentic-db@0.3.1...agentic-db@0.3.2) (2026-04-16)

**Note:** Version bump only for package agentic-db

## [0.3.1](https://github.com/constructive-io/agentic-db/compare/agentic-db@0.3.0...agentic-db@0.3.1) (2026-04-16)

### Bug Fixes

- make @agentic-db/services a dependency of agentic-db ([a69b555](https://github.com/constructive-io/agentic-db/commit/a69b555356af6040df50f78a6ae7d62093d90e5c))

# [0.3.0](https://github.com/constructive-io/agentic-db/compare/agentic-db@0.2.0...agentic-db@0.3.0) (2026-04-16)

### Bug Fixes

- add pgpm extension dependencies so pgpm install pulls them in ([5fc329b](https://github.com/constructive-io/agentic-db/commit/5fc329b1dc97b99c9a93fc7ea7a09449e2929486))

# [0.2.0](https://github.com/constructive-io/agentic-db/compare/agentic-db@0.1.0...agentic-db@0.2.0) (2026-04-16)

### Bug Fixes

- remove publishConfig.directory from pgpm SQL packages ([70b4e75](https://github.com/constructive-io/agentic-db/commit/70b4e7588497a7cce70c88c0f9fdf955c6ffdc08))

# 0.1.0 (2026-04-16)

### Bug Fixes

- add explicit chunk table definitions for all 32 DataSearch tables ([b69b5f8](https://github.com/constructive-io/agentic-db/commit/b69b5f8cbc44b4ebca9e1111f298e875e946cc65))
- create no-op app_jobs.add_job stub for trigger compatibility in test DB ([c3e6c9b](https://github.com/constructive-io/agentic-db/commit/c3e6c9b66af44b57ac9eeb2b55ed8bec2cc80f46))
- grant app_jobs access to anonymous role and remove contacts_chunks references ([dbe6c45](https://github.com/constructive-io/agentic-db/commit/dbe6c455f680ff6d1f7a8100729f22c31890c1a3))
- grant authenticated role USAGE on app_jobs schema for trigger access ([b43b451](https://github.com/constructive-io/agentic-db/commit/b43b4511886d01c198d6feeacefeabc7095efac1))
- insert org_memberships_sprt entry for contact so contacts_chunks RLS passes ([6005851](https://github.com/constructive-io/agentic-db/commit/60058511ab9d17ebc229d7497399cf26948e2665))
- move chunks config inside embedding object, regenerate SDK with proper chunk tables ([5009bbe](https://github.com/constructive-io/agentic-db/commit/5009bbe013b80a3df3033e68f434ac7040948815))
- override jwt_private.current_database_id() to fix NULL database_id in job triggers ([a2f6a52](https://github.com/constructive-io/agentic-db/commit/a2f6a52c5865d2745038c39cf27d153129710ac6))
- properly remove codebase entries from pgpm.plan without breaking dependency ordering ([a08f1c5](https://github.com/constructive-io/agentic-db/commit/a08f1c5310e6fdf5c1e5aa4a33f0315c22ec9b7c))
- regenerate SDK with domain-based routing, fix membership defaults schema lookup ([dc9f254](https://github.com/constructive-io/agentic-db/commit/dc9f2547eebab788b308bec2fb2caf437beb4343))
- relax includeChunks assertion to toBeLessThanOrEqual ([a0483a9](https://github.com/constructive-io/agentic-db/commit/a0483a9acf2ee174a0025c41de7aca59015a5db5))
- remove duplicate FK indexes from Phase 3, re-provision and re-export all artifacts ([da7f3ae](https://github.com/constructive-io/agentic-db/commit/da7f3ae20d433349c9f821db5a55547c5fff006a))
- remove embedding_text from chunk INSERT (column doesn't exist on chunks table) ([d1585bb](https://github.com/constructive-io/agentic-db/commit/d1585bb4246ee788b96efa95d113df8555a1b7dc))
- restore agentic-db package.json devDependencies after pgpm export overwrite ([674d279](https://github.com/constructive-io/agentic-db/commit/674d27955560fb149a35f36ab6053c6020b00575))
- restore test files and fixtures deleted by pgpm export ([813a040](https://github.com/constructive-io/agentic-db/commit/813a040d0f34fba5bdca7a6388a07ef890122676))
- restore test-utils/helpers.ts deleted by pgpm export ([dc8a415](https://github.com/constructive-io/agentic-db/commit/dc8a4159a6e4600840f563863f05f1d403fa131d))
- revert to SPRT insert with documentation of schema gap ([757f8f2](https://github.com/constructive-io/agentic-db/commit/757f8f28ceb4d62fa4b69705393a2cdd721eb1d4))
- set app_membership_defaults before sign_up so SPRT is populated and RLS passes ([a7d2240](https://github.com/constructive-io/agentic-db/commit/a7d2240ccf767d7ddcd734e5dfd9fd228bb21b6c))
- use contactsChunk (plural) to match main branch SDK types ([497ac56](https://github.com/constructive-io/agentic-db/commit/497ac56bcfb4a55899ebe66fdb76a540d1588c9d))
- use contactsId (not entityId) for contactsChunk FK per main SDK types ([0540127](https://github.com/constructive-io/agentic-db/commit/05401275fd7bb18aba7f5d711c0dccd511358c2c))
- use correct ORM model names (contactChunk, contactId) in RAG tests ([008f332](https://github.com/constructive-io/agentic-db/commit/008f332a76fa658aa7abb40b0c67b6e8a325f864))
- use db.publish() before pg chunk ops to commit ORM data ([21624f4](https://github.com/constructive-io/agentic-db/commit/21624f426a44eafd162fcb625c646a51a05d07aa))
- use public org_memberships table instead of private SPRT for entity registration ([c2b9b23](https://github.com/constructive-io/agentic-db/commit/c2b9b2304f76e5150bebf4bfdd2d54928480097a))
- use raw query() for signUp, add entityId to all create calls ([ab465cb](https://github.com/constructive-io/agentic-db/commit/ab465cb1895dbe32b9fe054a016d891992d5e858))
- use unique emails per test to avoid ACCOUNT_EXISTS errors ([071ae14](https://github.com/constructive-io/agentic-db/commit/071ae14f3d53acc4664b437b07edd14f0ff3b0d5))

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
- regenerate GraphQL SDK and remove all entityId references from tests and code ([eb5531d](https://github.com/constructive-io/agentic-db/commit/eb5531dd2442220ce3db2e8590e0bfc821c60280))
- remove social fields from contacts table ([303ecb9](https://github.com/constructive-io/agentic-db/commit/303ecb9c985e6f7d840d9c8525f8cba34649af73))
- reprovision agentic-db against latest constructive-db ([5f42408](https://github.com/constructive-io/agentic-db/commit/5f42408338e2f6ee99a4b8f82f9243fd63eb899a))
- rewrite RAG tests to use real pgpm-deployed schema ([aee5eb8](https://github.com/constructive-io/agentic-db/commit/aee5eb829c205189d5dfc4cbe911cb814ab00053))
- use bare database.create() with zero modules, re-provision and re-export clean pgpm workspace ([2227b7c](https://github.com/constructive-io/agentic-db/commit/2227b7c90e8963294691f2de92c8358bb5bc5784))
- use DataEmbedding chunks plugin instead of manual chunk tables ([c7674d1](https://github.com/constructive-io/agentic-db/commit/c7674d1e3f8a5d61e85e07200abf1f8eac4fd83f))
