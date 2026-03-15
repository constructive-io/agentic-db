-- Deploy: schemas/agent-os-1773551593867-bac64076-encrypted/tables/encrypted_secrets/columns/algo/alterations/alt0000002307
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-encrypted/schema
-- requires: schemas/agent-os-1773551593867-bac64076-encrypted/tables/encrypted_secrets/columns/algo/column


COMMENT ON COLUMN "agent-os-1773551593867-bac64076-encrypted".encrypted_secrets.algo IS E'Hashing algorithm used (e.g. bf for bcrypt)';

