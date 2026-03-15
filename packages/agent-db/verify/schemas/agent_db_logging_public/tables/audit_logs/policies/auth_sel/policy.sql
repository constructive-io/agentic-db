-- Verify: schemas/agent_db_logging_public/tables/audit_logs/policies/auth_sel/policy


SELECT verify_policy('auth_sel', 'agent_db_logging_public.audit_logs');


