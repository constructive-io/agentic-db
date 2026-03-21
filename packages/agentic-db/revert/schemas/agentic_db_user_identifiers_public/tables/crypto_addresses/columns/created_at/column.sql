-- Revert: schemas/agentic_db_user_identifiers_public/tables/crypto_addresses/columns/created_at/column


ALTER TABLE agentic_db_user_identifiers_public.crypto_addresses 
  DROP COLUMN created_at RESTRICT;


