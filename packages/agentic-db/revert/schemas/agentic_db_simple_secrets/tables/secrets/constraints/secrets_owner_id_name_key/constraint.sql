-- Revert: schemas/agentic_db_simple_secrets/tables/secrets/constraints/secrets_owner_id_name_key/constraint


ALTER TABLE "agentic_db_simple_secrets".secrets 
  DROP CONSTRAINT secrets_owner_id_name_key;


