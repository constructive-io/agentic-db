-- Revert: schemas/agent_db_simple_secrets/tables/secrets/grants/authenticated/insert/grant


REVOKE INSERT ON agent_db_simple_secrets.secrets FROM authenticated;


