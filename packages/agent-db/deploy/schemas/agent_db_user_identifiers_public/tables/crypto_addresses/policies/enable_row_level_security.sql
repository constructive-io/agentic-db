-- Deploy: schemas/agent_db_user_identifiers_public/tables/crypto_addresses/policies/enable_row_level_security
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_user_identifiers_public/schema
-- requires: schemas/agent_db_user_identifiers_public/tables/crypto_addresses/table


ALTER TABLE agent_db_user_identifiers_public.crypto_addresses 
  ENABLE ROW LEVEL SECURITY;

