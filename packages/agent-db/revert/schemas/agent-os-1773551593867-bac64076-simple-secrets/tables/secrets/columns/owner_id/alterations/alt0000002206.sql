-- Revert: schemas/agent-os-1773551593867-bac64076-simple-secrets/tables/secrets/columns/owner_id/alterations/alt0000002206


ALTER TABLE "agent-os-1773551593867-bac64076-simple-secrets".secrets 
  ALTER COLUMN owner_id DROP NOT NULL;


