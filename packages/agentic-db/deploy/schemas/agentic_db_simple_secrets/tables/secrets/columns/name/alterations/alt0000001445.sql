-- Deploy: schemas/agentic_db_simple_secrets/tables/secrets/columns/name/alterations/alt0000001445
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_simple_secrets/schema
-- requires: schemas/agentic_db_simple_secrets/tables/secrets/columns/name/column


COMMENT ON COLUMN "agentic_db_simple_secrets".secrets.name IS E'Key name identifying the secret (e.g. totp_seed, verification_token)';

