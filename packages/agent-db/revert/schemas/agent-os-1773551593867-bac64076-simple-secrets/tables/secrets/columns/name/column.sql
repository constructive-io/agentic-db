-- Revert: schemas/agent-os-1773551593867-bac64076-simple-secrets/tables/secrets/columns/name/column


ALTER TABLE "agent-os-1773551593867-bac64076-simple-secrets".secrets 
  DROP COLUMN name RESTRICT;


