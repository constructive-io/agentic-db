-- Deploy: schemas/agent_db_user_identifiers_public/tables/crypto_addresses/alterations/alt0000001585
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_user_identifiers_public/schema
-- requires: schemas/agent_db_user_identifiers_public/tables/crypto_addresses/table


ALTER TABLE "agent_db_user_identifiers_public".crypto_addresses 
  DISABLE ROW LEVEL SECURITY;

