-- Deploy: schemas/agent_db_encrypted/tables/encrypted_secrets/grants/authenticated/delete/grant
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_encrypted/schema
-- requires: schemas/agent_db_encrypted/tables/encrypted_secrets/table


GRANT DELETE ON "agent_db_encrypted".encrypted_secrets TO authenticated;

