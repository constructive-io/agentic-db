-- Deploy: schemas/agentic_db_encrypted/tables/encrypted_secrets/columns/algo/alterations/alt0000002410
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_encrypted/schema
-- requires: schemas/agentic_db_encrypted/tables/encrypted_secrets/columns/algo/column


COMMENT ON COLUMN agentic_db_encrypted.encrypted_secrets.algo IS E'Hashing algorithm used (e.g. bf for bcrypt)';

