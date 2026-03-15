-- Revert: schemas/agent-os-1773551593867-bac64076-simple-secrets/tables/secrets/columns/owner_id/column


ALTER TABLE "agent-os-1773551593867-bac64076-simple-secrets".secrets 
  DROP COLUMN owner_id RESTRICT;


