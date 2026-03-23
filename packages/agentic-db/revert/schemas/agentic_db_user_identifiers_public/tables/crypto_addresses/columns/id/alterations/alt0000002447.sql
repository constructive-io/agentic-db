-- Revert: schemas/agentic_db_user_identifiers_public/tables/crypto_addresses/columns/id/alterations/alt0000002447


ALTER TABLE agentic_db_user_identifiers_public.crypto_addresses 
  ALTER COLUMN id DROP NOT NULL;


