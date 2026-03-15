-- Revert: schemas/agent-os-1773547105079-c748b4c3-simple-secrets/tables/secrets/columns/owner_id/alterations/alt0000002158


ALTER TABLE "agent-os-1773547105079-c748b4c3-simple-secrets".secrets 
  ALTER COLUMN owner_id DROP NOT NULL;


