# Change Log

All notable changes to this project will be documented in this file.
See [Conventional Commits](https://conventionalcommits.org) for commit guidelines.

## [1.1.1](https://github.com/constructive-io/agentic-db/compare/@agentic-db/rag@1.1.0...@agentic-db/rag@1.1.1) (2026-04-17)

**Note:** Version bump only for package @agentic-db/rag

# [1.1.0](https://github.com/constructive-io/agentic-db/compare/@agentic-db/rag@1.0.0...@agentic-db/rag@1.1.0) (2026-04-16)

**Note:** Version bump only for package @agentic-db/rag

# [1.0.0](https://github.com/constructive-io/agentic-db/compare/@agentic-db/rag@0.4.0...@agentic-db/rag@1.0.0) (2026-04-16)

**Note:** Version bump only for package @agentic-db/rag

# [0.4.0](https://github.com/constructive-io/agentic-db/compare/@agentic-db/rag@0.3.1...@agentic-db/rag@0.4.0) (2026-04-16)

**Note:** Version bump only for package @agentic-db/rag

## [0.3.1](https://github.com/constructive-io/agentic-db/compare/@agentic-db/rag@0.3.0...@agentic-db/rag@0.3.1) (2026-04-16)

**Note:** Version bump only for package @agentic-db/rag

# [0.3.0](https://github.com/constructive-io/agentic-db/compare/@agentic-db/rag@0.2.0...@agentic-db/rag@0.3.0) (2026-04-16)

**Note:** Version bump only for package @agentic-db/rag

# [0.2.0](https://github.com/constructive-io/agentic-db/compare/@agentic-db/rag@0.1.0...@agentic-db/rag@0.2.0) (2026-04-16)

**Note:** Version bump only for package @agentic-db/rag

# 0.1.0 (2026-04-16)

### Bug Fixes

- **rag:** handle missing SDK models gracefully in search ([bec9ef7](https://github.com/constructive-io/agentic-db/commit/bec9ef706c2d6d15b1fa6eeaf96732d30dbbf2fe))
- resolve TypeScript build errors in packages/rag ([1d6c397](https://github.com/constructive-io/agentic-db/commit/1d6c397aea387a5f7ca9418dfffe92ce6084058a))
- use notesText instead of notes in ask.ts event context formatter ([cc195c4](https://github.com/constructive-io/agentic-db/commit/cc195c407b353bd86b02c7e083f9862c0f2bf919))
- use OR semantics for hybrid search (vector + fullTextSearch) ([fc949dd](https://github.com/constructive-io/agentic-db/commit/fc949ddc67e43dc0b3932960ac61119a18b2ca75))
- vector search via raw GraphQL, add company_events relation, junction migration ([7208a85](https://github.com/constructive-io/agentic-db/commit/7208a852e3fe78fe6dbb80ddc85000307d6ae604))

### Features

- add per-table chunk tables for all 34 embedding tables ([836a0df](https://github.com/constructive-io/agentic-db/commit/836a0dfa1c8265b4b75eb41e19d47d6af5819f89))
- generate SDK and CLI from provisioned schema ([cded2ac](https://github.com/constructive-io/agentic-db/commit/cded2ac6ac3a720bb1452b579844085599a310c0))
- implement hybrid search (vector + fullTextSearch) ([7f209c3](https://github.com/constructive-io/agentic-db/commit/7f209c3a814990ed7ccdf933e5eb1be6a9801c20))
- **rag:** always include contacts and companies as core CRM routing context ([cbf7a36](https://github.com/constructive-io/agentic-db/commit/cbf7a36e0d414d3e6335d847c3e783410150e338))
- **rag:** switch to agentic-kit and implement two-pass routing ([51e8eb1](https://github.com/constructive-io/agentic-db/commit/51e8eb1d1d53bcc34f89b9d3b8ca4a923f64537c))
- re-provision with postgres-plus:18 + BM25 indexes + codegen + export ([0dd4b28](https://github.com/constructive-io/agentic-db/commit/0dd4b2851157d73799b656a6f2f0a7e77f08efd0))
- regenerate GraphQL SDK and remove all entityId references from tests and code ([eb5531d](https://github.com/constructive-io/agentic-db/commit/eb5531dd2442220ce3db2e8590e0bfc821c60280))
- upgrade to hybrid search, refactor SDK usage, and fix auth ([2477bfb](https://github.com/constructive-io/agentic-db/commit/2477bfbd7e43399a8c60e557634d5d9b48d8e59f))
