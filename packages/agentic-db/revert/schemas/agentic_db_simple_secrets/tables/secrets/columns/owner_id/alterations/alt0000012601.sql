-- Revert: schemas/agentic_db_simple_secrets/tables/secrets/columns/owner_id/alterations/alt0000012601


ALTER TABLE agentic_db_simple_secrets.secrets 
  ALTER COLUMN owner_id DROP NOT NULL;


