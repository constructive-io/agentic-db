-- Revert: schemas/agentic_db_user_identifiers_public/tables/crypto_addresses/policies/enable_row_level_security


ALTER TABLE "agentic_db_user_identifiers_public".crypto_addresses 
  DISABLE ROW LEVEL SECURITY;


