-- Revert: schemas/agentic_db_simple_secrets/tables/secrets/columns/value/column


ALTER TABLE "agentic_db_simple_secrets".secrets 
  DROP COLUMN value RESTRICT;


