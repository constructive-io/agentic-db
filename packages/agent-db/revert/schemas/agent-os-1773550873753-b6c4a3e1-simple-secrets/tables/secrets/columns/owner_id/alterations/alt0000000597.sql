-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-simple-secrets/tables/secrets/columns/owner_id/alterations/alt0000000597


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-simple-secrets".secrets 
  ALTER COLUMN owner_id DROP NOT NULL;


