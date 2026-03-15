-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-encrypted/tables/encrypted_secrets/alterations/alt0000000689
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-encrypted/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-encrypted/tables/encrypted_secrets/table


COMMENT ON TABLE "agent-os-1773550873753-b6c4a3e1-encrypted".encrypted_secrets IS E'Encrypted key-value secrets store with hashing triggers (e.g. passwords); values are hashed on insert/update';

