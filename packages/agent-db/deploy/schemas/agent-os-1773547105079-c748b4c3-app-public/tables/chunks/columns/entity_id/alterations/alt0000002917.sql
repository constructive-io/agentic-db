-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/chunks/columns/entity_id/alterations/alt0000002917
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/chunks/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/files/columns/hash/column
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/chunks/columns/entity_id/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".chunks 
  ALTER COLUMN entity_id SET NOT NULL;

