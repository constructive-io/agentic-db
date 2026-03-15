-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-encrypted/tables/encrypted_secrets/alterations/alt0000000689
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-encrypted/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-encrypted/tables/encrypted_secrets/table


COMMENT ON TABLE "agent-os-1773546821914-39f1cb9b-encrypted".encrypted_secrets IS E'Encrypted key-value secrets store with hashing triggers (e.g. passwords); values are hashed on insert/update';

