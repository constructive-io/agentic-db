-- Deploy: schemas/agent_db_encrypted/tables/encrypted_secrets/columns/owner_id/alterations/alt0000002397
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_encrypted/schema
-- requires: schemas/agent_db_encrypted/tables/encrypted_secrets/table
-- requires: schemas/agent_db_encrypted/tables/encrypted_secrets/columns/owner_id/column


ALTER TABLE "agent_db_encrypted".encrypted_secrets 
  ALTER COLUMN owner_id SET NOT NULL;

