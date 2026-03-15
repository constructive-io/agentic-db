-- Revert: schemas/agent_db_simple_secrets/tables/secrets/grants/authenticated/update/grant


REVOKE UPDATE ON agent_db_simple_secrets.secrets FROM authenticated;


