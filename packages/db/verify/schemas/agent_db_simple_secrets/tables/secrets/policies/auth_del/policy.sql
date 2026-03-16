-- Verify: schemas/agent_db_simple_secrets/tables/secrets/policies/auth_del/policy


SELECT verify_policy('auth_del', 'agent_db_simple_secrets.secrets');


