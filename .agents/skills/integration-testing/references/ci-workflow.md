# CI Workflow

The integration test CI is defined in `.github/workflows/integration-test.yml`.

## Triggers

- Push to `main`
- Pull requests targeting `main`
- Manual dispatch (`workflow_dispatch`)

## Jobs

### 1. pgpm-deploy

Deploys the full agentic-db schema via pgpm and verifies the deployment.

Steps:
1. Install pgpm CLI globally (cached)
2. Create test database + bootstrap users
3. Install extensions (`pg_textsearch`)
4. Deploy `agentic-db` package
5. Deploy `agentic-db-services` package
6. Verify: check schemas, table count, BM25 indexes

### 2. orm-tests

Runs the ORM test suite.

Steps:
1. Setup pnpm 10.22.0 + Node.js 22
2. `pnpm install --frozen-lockfile`
3. Debug dependency tree (checks for duplicate graphql)
4. Run `pnpm test:orm`

### 3. embedding-tests

Runs the embedding/pgvector test suite.

Steps:
1. Setup pnpm 10.22.0 + Node.js 22
2. `pnpm install --frozen-lockfile`
3. Run `pnpm test:embeddings`

## Service Container

All jobs use the same PostgreSQL service:

```yaml
services:
  pg_db:
    image: docker.io/constructiveio/postgres-plus:18
    env:
      POSTGRES_USER: postgres
      POSTGRES_PASSWORD: password
    options: >-
      --health-cmd pg_isready
      --health-interval 10s
      --health-timeout 5s
      --health-retries 5
    ports:
      - 5432:5432
```

**Image:** `constructiveio/postgres-plus:18` includes:
- PostgreSQL 18
- pgvector extension
- pg_textsearch extension (BM25)
- PostGIS extension
- uuid-ossp extension
- All other extensions required by Constructive

## Critical CI Settings

| Setting | Value | Why |
|---|---|---|
| Node.js version | `22` | Node 20 causes different module resolution, leading to duplicate graphql |
| pnpm version | `10.22.0` | Exact pin prevents lockfile drift |
| `--frozen-lockfile` | Required | Ensures CI uses exact lockfile versions |
| Concurrency | Cancel in-progress | Prevents resource waste on rapid pushes |

## Environment Variables

```yaml
env:
  PGHOST: localhost
  PGPORT: 5432
  PGUSER: postgres
  PGPASSWORD: password
```

## Debug Step

The orm-tests job includes a debug step that checks:
- pnpm version
- graphql versions in the dependency tree
- grafast singleton status
- Duplicate graphql installations in node_modules

This is useful when diagnosing module duplication issues. Check its output in CI logs if ORM tests fail.

## Adding a New Job

To add a new test job:

```yaml
  my-new-tests:
    runs-on: ubuntu-latest
    timeout-minutes: 15

    env:
      PGHOST: localhost
      PGPORT: 5432
      PGUSER: postgres
      PGPASSWORD: password

    services:
      pg_db:
        image: docker.io/constructiveio/postgres-plus:18
        env:
          POSTGRES_USER: postgres
          POSTGRES_PASSWORD: password
        options: >-
          --health-cmd pg_isready
          --health-interval 10s
          --health-timeout 5s
          --health-retries 5
        ports:
          - 5432:5432

    steps:
      - name: Checkout
        uses: actions/checkout@v4

      - name: Setup pnpm
        uses: pnpm/action-setup@v2
        with:
          version: 10.22.0

      - name: Setup Node.js
        uses: actions/setup-node@v4
        with:
          node-version: '22'
          cache: 'pnpm'

      - name: Install dependencies
        run: pnpm install --frozen-lockfile

      - name: Run tests
        run: |
          cd packages/integration-tests
          pnpm test:my-new-test
```
