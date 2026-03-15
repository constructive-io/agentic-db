-- Deploy: schemas/agent_db_encrypted/tables/encrypted_secrets/columns/algo/alterations/alt0000003916
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_encrypted/schema
-- requires: schemas/agent_db_encrypted/tables/encrypted_secrets/columns/algo/column


COMMENT ON COLUMN "agent_db_encrypted".encrypted_secrets.algo IS E'Hashing algorithm used (e.g. bf for bcrypt)';

