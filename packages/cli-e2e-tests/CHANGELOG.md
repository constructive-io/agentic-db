# Change Log

All notable changes to this project will be documented in this file.
See [Conventional Commits](https://conventionalcommits.org) for commit guidelines.

## [1.2.1](https://github.com/constructive-io/agentic-db/compare/@agentic-db/cli-e2e-tests@1.2.0...@agentic-db/cli-e2e-tests@1.2.1) (2026-04-17)

**Note:** Version bump only for package @agentic-db/cli-e2e-tests

# [1.2.0](https://github.com/constructive-io/agentic-db/compare/@agentic-db/cli-e2e-tests@1.1.1...@agentic-db/cli-e2e-tests@1.2.0) (2026-04-17)

### Bug Fixes

- use where: { id } for ORM update/delete; loosen CLI create assertion ([b784f53](https://github.com/constructive-io/agentic-db/commit/b784f5304ed7f071191ee05a99175a2871426657))

### Features

- expand tests and align docs with real ORM/CLI behavior ([1c01d06](https://github.com/constructive-io/agentic-db/commit/1c01d06822985773ed212141853d573b2cdb1fb3))

## [1.1.1](https://github.com/constructive-io/agentic-db/compare/@agentic-db/cli-e2e-tests@1.1.0...@agentic-db/cli-e2e-tests@1.1.1) (2026-04-17)

**Note:** Version bump only for package @agentic-db/cli-e2e-tests

# [1.1.0](https://github.com/constructive-io/agentic-db/compare/@agentic-db/cli-e2e-tests@1.0.0...@agentic-db/cli-e2e-tests@1.1.0) (2026-04-16)

**Note:** Version bump only for package @agentic-db/cli-e2e-tests

# [1.0.0](https://github.com/constructive-io/agentic-db/compare/@agentic-db/cli-e2e-tests@0.4.0...@agentic-db/cli-e2e-tests@1.0.0) (2026-04-16)

**Note:** Version bump only for package @agentic-db/cli-e2e-tests

# [0.4.0](https://github.com/constructive-io/agentic-db/compare/@agentic-db/cli-e2e-tests@0.3.1...@agentic-db/cli-e2e-tests@0.4.0) (2026-04-16)

**Note:** Version bump only for package @agentic-db/cli-e2e-tests

## [0.3.1](https://github.com/constructive-io/agentic-db/compare/@agentic-db/cli-e2e-tests@0.3.0...@agentic-db/cli-e2e-tests@0.3.1) (2026-04-16)

**Note:** Version bump only for package @agentic-db/cli-e2e-tests

# [0.3.0](https://github.com/constructive-io/agentic-db/compare/@agentic-db/cli-e2e-tests@0.2.0...@agentic-db/cli-e2e-tests@0.3.0) (2026-04-16)

**Note:** Version bump only for package @agentic-db/cli-e2e-tests

# [0.2.0](https://github.com/constructive-io/agentic-db/compare/@agentic-db/cli-e2e-tests@0.1.0...@agentic-db/cli-e2e-tests@0.2.0) (2026-04-16)

**Note:** Version bump only for package @agentic-db/cli-e2e-tests

# 0.1.0 (2026-04-16)

### Bug Fixes

- add --context flag to ask command, seed once in beforeAll, increase CLI timeout ([324c18f](https://github.com/constructive-io/agentic-db/commit/324c18f0f6e76073113286a72ac4e7711d76ab46))
- add local Ollama proxy, restore HOME override, clear NODE_OPTIONS in subprocess ([a5801d2](https://github.com/constructive-io/agentic-db/commit/a5801d2bb04098c5cb8bccced647390be4a3eed1))
- disable RLS for anonymous role, extract JSON from stdout prefix ([b1c93f9](https://github.com/constructive-io/agentic-db/commit/b1c93f9e7da2d80aeddcfc3c03b892975c7bfff5))
- grant app_jobs access to anonymous role and remove contacts_chunks references ([dbe6c45](https://github.com/constructive-io/agentic-db/commit/dbe6c455f680ff6d1f7a8100729f22c31890c1a3))
- override jwt_private.current_database_id() to fix NULL database_id in job triggers ([a2f6a52](https://github.com/constructive-io/agentic-db/commit/a2f6a52c5865d2745038c39cf27d153129710ac6))
- pass seed.pgpm(REPO_ROOT) to deploy schema in test database ([89d5e9c](https://github.com/constructive-io/agentic-db/commit/89d5e9ca51a4193e9e8cbe1a96e80ecb705fca7f))
- seed data via direct SQL, grant anonymous read access for CLI queries ([235c62e](https://github.com/constructive-io/agentic-db/commit/235c62e9aafdf3bbb861c97752926618d48e6d6c))
- stop overriding HOME in subprocess env, add Ollama diagnostic test ([d54386e](https://github.com/constructive-io/agentic-db/commit/d54386e7de352856958604170f9c494201e79673))
- stub app_jobs.add_job for chunking triggers in test DB ([6af4019](https://github.com/constructive-io/agentic-db/commit/6af4019db61cdcb7f45e46bfb846127ee34f2325))
- use async spawn instead of execSync to avoid event loop deadlock ([9153c88](https://github.com/constructive-io/agentic-db/commit/9153c8827828147b13d04d0b4467686d3725127b))
- use auth headers for HTTP queries, deploy only agentic-db package ([387ad7b](https://github.com/constructive-io/agentic-db/commit/387ad7b9bad2fe9cb4ea5a6216d3f1b6b28fa1d2))
- use correct pgpm package paths for seed adapters (packages/agentic-db + agentic-db-services) ([8a0ef67](https://github.com/constructive-io/agentic-db/commit/8a0ef6702cf57dea664790b7ab5dc05155701695))
- use direct tsx binary path instead of npx to avoid HOME-cache hangs in CI ([eed0dd5](https://github.com/constructive-io/agentic-db/commit/eed0dd524acfbb41a5d236b5b4506f60990a6d5d))

### Features

- add CLI e2e test package with graphql-server-test + subprocess invocation ([8c36cd9](https://github.com/constructive-io/agentic-db/commit/8c36cd9358c4e178896e1e4796036d4181dedf37))
- regenerate GraphQL SDK and remove all entityId references from tests and code ([eb5531d](https://github.com/constructive-io/agentic-db/commit/eb5531dd2442220ce3db2e8590e0bfc821c60280))
