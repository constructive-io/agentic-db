-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/activity_log/grants/authenticated/select/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/activity_log/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/session_archives/columns/embedding/column


GRANT SELECT ON "agent-os-1773550873753-b6c4a3e1-app-public".activity_log TO authenticated;

