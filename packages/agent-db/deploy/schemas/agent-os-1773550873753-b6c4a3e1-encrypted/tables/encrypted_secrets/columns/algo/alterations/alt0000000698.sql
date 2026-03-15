-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-encrypted/tables/encrypted_secrets/columns/algo/alterations/alt0000000698
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-encrypted/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-encrypted/tables/encrypted_secrets/columns/algo/column


COMMENT ON COLUMN "agent-os-1773550873753-b6c4a3e1-encrypted".encrypted_secrets.algo IS E'Hashing algorithm used (e.g. bf for bcrypt)';

