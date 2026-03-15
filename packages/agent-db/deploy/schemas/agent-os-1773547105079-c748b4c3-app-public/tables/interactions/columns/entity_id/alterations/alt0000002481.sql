-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/interactions/columns/entity_id/alterations/alt0000002481
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/interactions/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/notes/columns/embedding/column
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/interactions/columns/entity_id/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".interactions 
  ALTER COLUMN entity_id SET NOT NULL;

