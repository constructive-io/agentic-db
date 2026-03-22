-- Revert: schemas/agentic_db_encrypted/tables/encrypted_secrets/columns/value/column


ALTER TABLE agentic_db_encrypted.encrypted_secrets 
  DROP COLUMN value RESTRICT;


