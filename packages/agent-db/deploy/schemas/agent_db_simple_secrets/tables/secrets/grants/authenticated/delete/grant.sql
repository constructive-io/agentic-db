-- Deploy: schemas/agent_db_simple_secrets/tables/secrets/grants/authenticated/delete/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_simple_secrets/schema
-- requires: schemas/agent_db_simple_secrets/tables/secrets/table


GRANT DELETE ON agent_db_simple_secrets.secrets TO authenticated;

