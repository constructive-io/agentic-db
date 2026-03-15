-- Revert: schemas/agent-os-1773546821914-39f1cb9b-simple-secrets/tables/secrets/constraints/secrets_owner_id_name_key/constraint


ALTER TABLE "agent-os-1773546821914-39f1cb9b-simple-secrets".secrets 
  DROP CONSTRAINT secrets_owner_id_name_key;


