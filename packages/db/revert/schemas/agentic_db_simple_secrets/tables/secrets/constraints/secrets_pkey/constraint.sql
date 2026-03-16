-- Revert: schemas/agentic_db_simple_secrets/tables/secrets/constraints/secrets_pkey/constraint


ALTER TABLE "agentic_db_simple_secrets".secrets 
  DROP CONSTRAINT secrets_pkey;


