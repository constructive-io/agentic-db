-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/tools/columns/entity_id/alterations/alt0000002778
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/tools/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/tools/columns/entity_id/column
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/scheduled_jobs/columns/last_result/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".tools 
  ALTER COLUMN entity_id SET NOT NULL;

