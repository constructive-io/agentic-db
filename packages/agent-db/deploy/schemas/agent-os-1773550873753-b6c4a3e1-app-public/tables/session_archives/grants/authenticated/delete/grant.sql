-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/session_archives/grants/authenticated/delete/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/session_archives/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/context_relations/columns/strength/column


GRANT DELETE ON "agent-os-1773550873753-b6c4a3e1-app-public".session_archives TO authenticated;

