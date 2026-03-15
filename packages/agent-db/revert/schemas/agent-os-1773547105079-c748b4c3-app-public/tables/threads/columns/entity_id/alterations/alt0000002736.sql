-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/threads/columns/entity_id/alterations/alt0000002736


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".threads 
  ALTER COLUMN entity_id DROP NOT NULL;


