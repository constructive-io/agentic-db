-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/rules/columns/trigger_concept/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/rules/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/rules/columns/embedding/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".rules 
  ADD COLUMN trigger_concept vector(768);

