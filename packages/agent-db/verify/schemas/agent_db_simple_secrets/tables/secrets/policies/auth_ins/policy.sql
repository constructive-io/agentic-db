-- Verify: schemas/agent_db_simple_secrets/tables/secrets/policies/auth_ins/policy


SELECT verify_policy('auth_ins', 'agent_db_simple_secrets.secrets');


