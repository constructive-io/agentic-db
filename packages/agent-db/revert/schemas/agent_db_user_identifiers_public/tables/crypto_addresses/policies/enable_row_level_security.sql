-- Revert: schemas/agent_db_user_identifiers_public/tables/crypto_addresses/policies/enable_row_level_security


ALTER TABLE agent_db_user_identifiers_public.crypto_addresses 
  DISABLE ROW LEVEL SECURITY;


