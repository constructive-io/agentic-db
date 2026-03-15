-- Deploy: schemas/agent-os-1773551593867-bac64076-encrypted/tables/encrypted_secrets/alterations/alt0000002298
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-encrypted/schema
-- requires: schemas/agent-os-1773551593867-bac64076-encrypted/tables/encrypted_secrets/table


COMMENT ON TABLE "agent-os-1773551593867-bac64076-encrypted".encrypted_secrets IS E'Encrypted key-value secrets store with hashing triggers (e.g. passwords); values are hashed on insert/update';

