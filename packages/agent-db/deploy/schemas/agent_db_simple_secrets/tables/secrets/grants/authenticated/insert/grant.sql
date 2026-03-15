-- Deploy: schemas/agent_db_simple_secrets/tables/secrets/grants/authenticated/insert/grant
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_simple_secrets/schema
-- requires: schemas/agent_db_simple_secrets/tables/secrets/table


GRANT INSERT ON agent_db_simple_secrets.secrets TO authenticated;

