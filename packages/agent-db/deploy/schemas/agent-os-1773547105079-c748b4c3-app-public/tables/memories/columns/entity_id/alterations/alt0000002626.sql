-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/memories/columns/entity_id/alterations/alt0000002626
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/memories/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/memories/columns/entity_id/column
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/rules/columns/trigger_concept/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".memories 
  ALTER COLUMN entity_id SET NOT NULL;

