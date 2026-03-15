-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/processes/columns/entity_id/alterations/alt0000002755


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".processes 
  ALTER COLUMN entity_id DROP NOT NULL;


