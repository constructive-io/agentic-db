# Change Log

All notable changes to this project will be documented in this file.
See [Conventional Commits](https://conventionalcommits.org) for commit guidelines.

# [0.4.0](https://github.com/constructive-io/agentic-db/compare/@agentic-db/integration-tests@0.3.1...@agentic-db/integration-tests@0.4.0) (2026-04-16)

**Note:** Version bump only for package @agentic-db/integration-tests

## [0.3.1](https://github.com/constructive-io/agentic-db/compare/@agentic-db/integration-tests@0.3.0...@agentic-db/integration-tests@0.3.1) (2026-04-16)

**Note:** Version bump only for package @agentic-db/integration-tests

# [0.3.0](https://github.com/constructive-io/agentic-db/compare/@agentic-db/integration-tests@0.2.0...@agentic-db/integration-tests@0.3.0) (2026-04-16)

**Note:** Version bump only for package @agentic-db/integration-tests

# [0.2.0](https://github.com/constructive-io/agentic-db/compare/@agentic-db/integration-tests@0.1.0...@agentic-db/integration-tests@0.2.0) (2026-04-16)

**Note:** Version bump only for package @agentic-db/integration-tests

# 0.1.0 (2026-04-16)

### Bug Fixes

- add @0no-co/graphql.web dependency for generated ORM code ([4c6c9f5](https://github.com/constructive-io/agentic-db/commit/4c6c9f54350a92df5bccd34d19da856052db654f))
- add db.extensions for ConstructivePreset plugins (postgis, vector, pg_trgm) ([05b76db](https://github.com/constructive-io/agentic-db/commit/05b76db3cb8eeb910e2df69e314ca97c502f16c2))
- align deps with constructive, add ConstructivePreset, fix test field names ([0619178](https://github.com/constructive-io/agentic-db/commit/06191783a2af5ed80b8d34c135601ae46b8c759a))
- deduplicate graphql module, add vector extension to seed SQL ([23fd283](https://github.com/constructive-io/agentic-db/commit/23fd283d0437c93a590723e2ce6787ef989a4a04))
- restore embedding columns and chunk tables for embedding tests ([3c69f25](https://github.com/constructive-io/agentic-db/commit/3c69f250c0a27541ccec3937fed8dd24fce9eb10))
- simplify schema (remove citext, add pg_textsearch) to isolate connection resolver issue ([585672d](https://github.com/constructive-io/agentic-db/commit/585672da7a8e4f34fb6b2362e8355cd9d06070c3))
- strip schema to minimal pattern matching orm-m2n (no extensions, simple types, per-table grants) ([0d8fa8b](https://github.com/constructive-io/agentic-db/commit/0d8fa8bc873f6260f57280dc81dae02220696617))
- use Node.js 22 on CI to match local, add --frozen-lockfile, add raw diagnostic test ([8a3b4bf](https://github.com/constructive-io/agentic-db/commit/8a3b4bfdb07a083593f63c688d6c624eb3dad7d4))

### Features

- add integration test suite for ORM and embeddings ([0b64f2b](https://github.com/constructive-io/agentic-db/commit/0b64f2b15698187a38510735458edbfc874e17ca))
- add RAG integration tests with real Ollama + ORM pipeline ([342c562](https://github.com/constructive-io/agentic-db/commit/342c5627bbbbddaf66db9f9765468e5150ffc1fa))
- rewrite ORM test to use codegen pipeline + generated ORM client ([3cb498e](https://github.com/constructive-io/agentic-db/commit/3cb498ea5fd019c4323dada8aa965fbfbae89079))
- rewrite worker/jobs to use ORM, add embedding-pipeline CI with real Ollama ([8e04c87](https://github.com/constructive-io/agentic-db/commit/8e04c874f356ca70c042253f998a4698028fdcdd))
