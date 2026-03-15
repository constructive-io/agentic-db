-- Deploy: schemas/agent_db_simple_secrets/tables/secrets/columns/name/alterations/alt0000000600
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_simple_secrets/schema
-- requires: schemas/agent_db_simple_secrets/tables/secrets/columns/name/column


COMMENT ON COLUMN agent_db_simple_secrets.secrets.name IS E'Key name identifying the secret (e.g. totp_seed, verification_token)';

