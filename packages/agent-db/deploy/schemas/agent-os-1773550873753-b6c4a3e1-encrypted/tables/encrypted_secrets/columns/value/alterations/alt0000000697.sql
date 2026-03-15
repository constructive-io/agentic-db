-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-encrypted/tables/encrypted_secrets/columns/value/alterations/alt0000000697
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-encrypted/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-encrypted/tables/encrypted_secrets/columns/value/column


COMMENT ON COLUMN "agent-os-1773550873753-b6c4a3e1-encrypted".encrypted_secrets.value IS E'The hashed/encrypted secret value stored as binary';

