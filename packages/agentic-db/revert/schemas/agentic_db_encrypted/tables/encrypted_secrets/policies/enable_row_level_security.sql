-- Revert: schemas/agentic_db_encrypted/tables/encrypted_secrets/policies/enable_row_level_security


ALTER TABLE "agentic_db_encrypted".encrypted_secrets 
  DISABLE ROW LEVEL SECURITY;


