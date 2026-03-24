-- Revert: schemas/agentic_db_simple_secrets/tables/secrets/columns/name/column


ALTER TABLE agentic_db_simple_secrets.secrets 
  DROP COLUMN name RESTRICT;


