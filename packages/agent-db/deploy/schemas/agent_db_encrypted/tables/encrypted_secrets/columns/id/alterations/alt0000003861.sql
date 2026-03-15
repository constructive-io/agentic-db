-- Deploy: schemas/agent_db_encrypted/tables/encrypted_secrets/columns/id/alterations/alt0000003861
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_encrypted/schema
-- requires: schemas/agent_db_encrypted/tables/encrypted_secrets/table
-- requires: schemas/agent_db_encrypted/tables/encrypted_secrets/columns/id/column



ALTER TABLE "agent_db_encrypted".encrypted_secrets 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

