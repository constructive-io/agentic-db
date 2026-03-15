-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/feedback/columns/id/alterations/alt0000002680
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/feedback/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/feedback/columns/id/column
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/skill_executions/columns/error/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".feedback 
  ALTER COLUMN id SET NOT NULL;

