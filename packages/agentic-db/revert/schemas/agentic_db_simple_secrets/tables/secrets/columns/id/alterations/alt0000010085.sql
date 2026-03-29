-- Revert: schemas/agentic_db_simple_secrets/tables/secrets/columns/id/alterations/alt0000010085


ALTER TABLE agentic_db_simple_secrets.secrets 
  ALTER COLUMN id DROP NOT NULL;


