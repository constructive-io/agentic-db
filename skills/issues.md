# Skills Issues — Upstream Later

## nextjs-app.md (from constructive-boilerplate-nextjs-app)

**Source:** `constructive-io/constructive-skills`

### Issues to fix upstream:

1. **`-w` flag not always needed** — The skill implies `-w` is required, but it works without `-w` if you're already inside a PGPM workspace (has `pgpm.json`)

2. **Clarify workspace requirement** — The template has `requiresWorkspace: "pgpm"` which means it needs `pgpm.json`, not just `pnpm-workspace.yaml`. A plain pnpm workspace won't work.

3. **`--moduleName` is directory name only** — The flag sets the directory name under `packages/`, but the `package.json` name is hardcoded in the template as `constructive-boilerplate`. Users expecting `--moduleName` to set the npm package name will be confused.

4. **Non-interactive workspace creation broken** — Running `pgpm init workspace --no-tty` fails with `ERR_USE_AFTER_CLOSE`. The standalone workspace creation has missing required prompts not covered by CLI flags.

### Suggested skill updates:

```markdown
## Without -w (Inside Existing Workspace)

If you're already inside a PGPM workspace (directory with `pgpm.json`):

\`\`\`bash
pgpm init \
  --repo constructive-io/sandbox-templates \
  --template nextjs/constructive-app \
  --no-tty \
  --moduleName frontend \
  --fullName "Dan Lynch" \
  --email "dan@example.com" \
  --repoName my-workspace \
  --username myusername \
  --license MIT \
  --extensions "plpgsql,uuid-ossp"
\`\`\`

Note: The module will be created at `packages/<moduleName>/` but the package.json name is defined by the template, not `--moduleName`.
```

---

*Created: 2026-03-01*
