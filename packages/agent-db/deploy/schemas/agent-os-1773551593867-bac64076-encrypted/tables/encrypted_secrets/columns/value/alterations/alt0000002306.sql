-- Deploy: schemas/agent-os-1773551593867-bac64076-encrypted/tables/encrypted_secrets/columns/value/alterations/alt0000002306
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-encrypted/schema
-- requires: schemas/agent-os-1773551593867-bac64076-encrypted/tables/encrypted_secrets/columns/value/column


COMMENT ON COLUMN "agent-os-1773551593867-bac64076-encrypted".encrypted_secrets.value IS E'The hashed/encrypted secret value stored as binary';

