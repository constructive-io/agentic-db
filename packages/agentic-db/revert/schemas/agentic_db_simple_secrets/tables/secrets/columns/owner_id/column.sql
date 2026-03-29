-- Revert: schemas/agentic_db_simple_secrets/tables/secrets/columns/owner_id/column


ALTER TABLE agentic_db_simple_secrets.secrets 
  DROP COLUMN owner_id RESTRICT;


