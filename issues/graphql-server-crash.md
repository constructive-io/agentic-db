# GraphQL Server Crash (pg-cache)

**Date:** 2026-03-05
**Issue:** Server process crashes with `API middleware error: Error: Cannot add to cache after it has been closed (key: postgres)`.
**Context:** Occurs when the server is restarted or under load during provisioning. The `pg-cache` pool seems to be closing prematurely or failing to re-initialize correctly in `graphql/server/src/run.ts`.

**Logs:**
```
[api] ERROR: API middleware error: Error: Cannot add to cache after it has been closed (key: postgres)
    at PgPoolCacheManager.set (.../postgres/pg-cache/dist/lru.js:73:19)
    at getPgPool (.../postgres/pg-cache/dist/pg.js:76:19)
```

**Workaround:** Kill the process and restart manually.
