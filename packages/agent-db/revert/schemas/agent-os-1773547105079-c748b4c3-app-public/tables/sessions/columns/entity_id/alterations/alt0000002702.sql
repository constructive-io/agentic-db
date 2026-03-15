-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/sessions/columns/entity_id/alterations/alt0000002702


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".sessions 
  ALTER COLUMN entity_id DROP NOT NULL;


