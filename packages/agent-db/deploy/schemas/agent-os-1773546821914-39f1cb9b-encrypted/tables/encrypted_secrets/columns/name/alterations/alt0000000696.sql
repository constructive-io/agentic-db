-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-encrypted/tables/encrypted_secrets/columns/name/alterations/alt0000000696
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-encrypted/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-encrypted/tables/encrypted_secrets/columns/name/column


COMMENT ON COLUMN "agent-os-1773546821914-39f1cb9b-encrypted".encrypted_secrets.name IS E'Key name identifying the secret (e.g. password)';

