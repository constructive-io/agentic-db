-- Revert: schemas/agent_db_user_identifiers_public/tables/crypto_addresses/columns/is_primary/column


ALTER TABLE agent_db_user_identifiers_public.crypto_addresses 
  DROP COLUMN is_primary RESTRICT;


