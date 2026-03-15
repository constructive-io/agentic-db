-- Revert: schemas/agent-os-1773551593867-bac64076-simple-secrets/tables/secrets/constraints/secrets_owner_id_name_key/constraint


ALTER TABLE "agent-os-1773551593867-bac64076-simple-secrets".secrets 
  DROP CONSTRAINT secrets_owner_id_name_key;


