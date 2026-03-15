-- Deploy: schemas/agent_db_simple_secrets/tables/secrets/columns/value/alterations/alt0000003771
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_simple_secrets/schema
-- requires: schemas/agent_db_simple_secrets/tables/secrets/columns/value/column


COMMENT ON COLUMN "agent_db_simple_secrets".secrets.value IS 'The plaintext secret value';

