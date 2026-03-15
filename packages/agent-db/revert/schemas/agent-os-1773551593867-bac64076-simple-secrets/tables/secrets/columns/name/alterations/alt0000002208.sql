-- Revert: schemas/agent-os-1773551593867-bac64076-simple-secrets/tables/secrets/columns/name/alterations/alt0000002208


ALTER TABLE "agent-os-1773551593867-bac64076-simple-secrets".secrets 
  ALTER COLUMN name DROP NOT NULL;


