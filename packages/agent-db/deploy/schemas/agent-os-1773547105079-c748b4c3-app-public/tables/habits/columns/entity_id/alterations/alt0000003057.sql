-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/habits/columns/entity_id/alterations/alt0000003057
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/habits/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/habits/columns/entity_id/column
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/reminders/columns/embedding/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".habits 
  ALTER COLUMN entity_id SET NOT NULL;

