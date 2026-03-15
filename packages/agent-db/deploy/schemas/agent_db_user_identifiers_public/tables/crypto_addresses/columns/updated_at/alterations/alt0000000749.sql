-- Deploy: schemas/agent_db_user_identifiers_public/tables/crypto_addresses/columns/updated_at/alterations/alt0000000749
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_user_identifiers_public/schema
-- requires: schemas/agent_db_user_identifiers_public/tables/crypto_addresses/table
-- requires: schemas/agent_db_user_identifiers_public/tables/crypto_addresses/columns/updated_at/column


ALTER TABLE agent_db_user_identifiers_public.crypto_addresses 
  ALTER COLUMN updated_at SET DEFAULT now();

