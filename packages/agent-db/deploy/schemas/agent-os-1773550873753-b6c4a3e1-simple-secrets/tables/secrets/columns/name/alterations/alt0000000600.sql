-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-simple-secrets/tables/secrets/columns/name/alterations/alt0000000600
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-simple-secrets/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-simple-secrets/tables/secrets/columns/name/column


COMMENT ON COLUMN "agent-os-1773550873753-b6c4a3e1-simple-secrets".secrets.name IS E'Key name identifying the secret (e.g. totp_seed, verification_token)';

