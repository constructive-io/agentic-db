-- Deploy: schemas/agent_db_encrypted/tables/encrypted_secrets/grants/authenticated/update/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_encrypted/schema
-- requires: schemas/agent_db_encrypted/tables/encrypted_secrets/table


GRANT UPDATE ON agent_db_encrypted.encrypted_secrets TO authenticated;

