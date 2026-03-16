-- Revert: schemas/agent_db_simple_secrets/tables/secrets/columns/name/alterations/alt0000001451


ALTER TABLE "agent_db_simple_secrets".secrets 
  ALTER COLUMN name DROP NOT NULL;


