-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/goals/grants/authenticated/delete/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/goals/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/skills/columns/intent_trigger/column


GRANT DELETE ON "agent-os-1773547105079-c748b4c3-app-public".goals TO authenticated;

