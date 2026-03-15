-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/reminders/columns/entity_id/alterations/alt0000003047
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/reminders/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/ideas/columns/embedding/column
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/reminders/columns/entity_id/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".reminders 
  ALTER COLUMN entity_id SET NOT NULL;

