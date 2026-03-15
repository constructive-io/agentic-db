-- Deploy: schemas/agent_db_encrypted/tables/encrypted_secrets/columns/id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_encrypted/schema
-- requires: schemas/agent_db_encrypted/tables/encrypted_secrets/table


ALTER TABLE "agent_db_encrypted".encrypted_secrets 
  ADD COLUMN id uuid;

