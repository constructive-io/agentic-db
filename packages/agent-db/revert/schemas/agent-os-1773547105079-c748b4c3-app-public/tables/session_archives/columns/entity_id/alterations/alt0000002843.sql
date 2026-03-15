-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/session_archives/columns/entity_id/alterations/alt0000002843


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".session_archives 
  ALTER COLUMN entity_id DROP NOT NULL;


