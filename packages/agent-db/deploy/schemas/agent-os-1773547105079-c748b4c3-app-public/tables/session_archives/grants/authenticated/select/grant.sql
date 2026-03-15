-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/session_archives/grants/authenticated/select/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/session_archives/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/context_relations/columns/strength/column


GRANT SELECT ON "agent-os-1773547105079-c748b4c3-app-public".session_archives TO authenticated;

