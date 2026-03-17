-- Deploy: schemas/agentic_db_user_identifiers_public/tables/crypto_addresses/policies/enable_row_level_security
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_user_identifiers_public/schema
-- requires: schemas/agentic_db_user_identifiers_public/tables/crypto_addresses/table


ALTER TABLE "agentic_db_user_identifiers_public".crypto_addresses 
  ENABLE ROW LEVEL SECURITY;

