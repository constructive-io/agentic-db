-- Deploy: schemas/agentic_db_encrypted/tables/encrypted_secrets/alterations/alt0000002807
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_encrypted/schema
-- requires: schemas/agentic_db_encrypted/tables/encrypted_secrets/table


COMMENT ON TABLE agentic_db_encrypted.encrypted_secrets IS E'Encrypted key-value secrets store with hashing triggers (e.g. passwords); values are hashed on insert/update';

