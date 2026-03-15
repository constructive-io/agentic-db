-- Verify: schemas/agent_db_simple_secrets/tables/secrets/policies/auth_upd/policy


SELECT verify_policy('auth_upd', 'agent_db_simple_secrets.secrets');


