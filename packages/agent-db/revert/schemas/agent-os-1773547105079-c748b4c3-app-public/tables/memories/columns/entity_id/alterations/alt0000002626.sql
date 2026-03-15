-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/memories/columns/entity_id/alterations/alt0000002626


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".memories 
  ALTER COLUMN entity_id DROP NOT NULL;


