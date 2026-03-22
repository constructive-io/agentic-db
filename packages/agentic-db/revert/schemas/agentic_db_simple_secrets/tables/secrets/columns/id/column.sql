-- Revert: schemas/agentic_db_simple_secrets/tables/secrets/columns/id/column


ALTER TABLE agentic_db_simple_secrets.secrets 
  DROP COLUMN id RESTRICT;


