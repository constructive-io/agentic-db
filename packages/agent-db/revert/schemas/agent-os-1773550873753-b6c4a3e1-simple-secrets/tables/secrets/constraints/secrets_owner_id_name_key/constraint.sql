-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-simple-secrets/tables/secrets/constraints/secrets_owner_id_name_key/constraint


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-simple-secrets".secrets 
  DROP CONSTRAINT secrets_owner_id_name_key;


