-- Revert: schemas/agentic_db_simple_secrets/tables/secrets/columns/name/alterations/alt0000000598


ALTER TABLE "agentic_db_simple_secrets".secrets 
  ALTER COLUMN name DROP NOT NULL;


