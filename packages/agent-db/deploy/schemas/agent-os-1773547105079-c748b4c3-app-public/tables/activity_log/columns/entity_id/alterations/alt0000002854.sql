-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/activity_log/columns/entity_id/alterations/alt0000002854
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/activity_log/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/activity_log/columns/entity_id/column
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/session_archives/columns/embedding/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".activity_log 
  ALTER COLUMN entity_id SET NOT NULL;

