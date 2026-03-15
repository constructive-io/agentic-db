-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/processes/columns/entity_id/alterations/alt0000002755
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/processes/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/processes/columns/entity_id/column
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/blueprints/columns/embedding/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".processes 
  ALTER COLUMN entity_id SET NOT NULL;

