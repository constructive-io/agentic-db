-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/session_archives/grants/authenticated/insert/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/session_archives/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/context_relations/columns/strength/column


GRANT INSERT ON "agent-os-1773546821914-39f1cb9b-app-public".session_archives TO authenticated;

