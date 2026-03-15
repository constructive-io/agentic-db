-- Deploy: schemas/agent_db_encrypted/tables/encrypted_secrets/grants/authenticated/insert/grant
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_encrypted/schema
-- requires: schemas/agent_db_encrypted/tables/encrypted_secrets/table


GRANT INSERT ON agent_db_encrypted.encrypted_secrets TO authenticated;

