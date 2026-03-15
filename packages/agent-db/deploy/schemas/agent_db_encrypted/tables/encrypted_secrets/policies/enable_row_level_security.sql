-- Deploy: schemas/agent_db_encrypted/tables/encrypted_secrets/policies/enable_row_level_security
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_encrypted/schema
-- requires: schemas/agent_db_encrypted/tables/encrypted_secrets/table


ALTER TABLE "agent_db_encrypted".encrypted_secrets 
  ENABLE ROW LEVEL SECURITY;

