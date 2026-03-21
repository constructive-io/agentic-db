-- Revert: schemas/agentic_db_user_identifiers_public/tables/crypto_addresses/columns/owner_id/column


ALTER TABLE agentic_db_user_identifiers_public.crypto_addresses 
  DROP COLUMN owner_id RESTRICT;


