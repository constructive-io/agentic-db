-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/feedback/grants/authenticated/update/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/feedback/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/skill_executions/columns/error/column


GRANT UPDATE ON "agent-os-1773547105079-c748b4c3-app-public".feedback TO authenticated;

