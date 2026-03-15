-- Revert: schemas/agent_db_user_identifiers_public/tables/crypto_addresses/columns/id/alterations/alt0000000735


ALTER TABLE agent_db_user_identifiers_public.crypto_addresses 
  ALTER COLUMN id DROP NOT NULL;


