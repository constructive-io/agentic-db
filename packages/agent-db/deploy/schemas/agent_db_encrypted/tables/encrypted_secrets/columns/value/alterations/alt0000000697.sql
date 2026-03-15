-- Deploy: schemas/agent_db_encrypted/tables/encrypted_secrets/columns/value/alterations/alt0000000697
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_encrypted/schema
-- requires: schemas/agent_db_encrypted/tables/encrypted_secrets/columns/value/column


COMMENT ON COLUMN agent_db_encrypted.encrypted_secrets.value IS E'The hashed/encrypted secret value stored as binary';

