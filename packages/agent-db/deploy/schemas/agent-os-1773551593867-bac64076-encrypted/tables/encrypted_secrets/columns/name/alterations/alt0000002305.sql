-- Deploy: schemas/agent-os-1773551593867-bac64076-encrypted/tables/encrypted_secrets/columns/name/alterations/alt0000002305
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-encrypted/schema
-- requires: schemas/agent-os-1773551593867-bac64076-encrypted/tables/encrypted_secrets/columns/name/column


COMMENT ON COLUMN "agent-os-1773551593867-bac64076-encrypted".encrypted_secrets.name IS E'Key name identifying the secret (e.g. password)';

