-- Deploy: schemas/agent_db_encrypted/tables/encrypted_secrets/alterations/alt0000003907
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_encrypted/schema
-- requires: schemas/agent_db_encrypted/tables/encrypted_secrets/table


COMMENT ON TABLE "agent_db_encrypted".encrypted_secrets IS E'Encrypted key-value secrets store with hashing triggers (e.g. passwords); values are hashed on insert/update';

