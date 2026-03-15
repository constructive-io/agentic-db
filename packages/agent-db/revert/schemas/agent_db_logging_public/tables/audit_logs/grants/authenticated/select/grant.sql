-- Revert: schemas/agent_db_logging_public/tables/audit_logs/grants/authenticated/select/grant


REVOKE SELECT ON agent_db_logging_public.audit_logs FROM authenticated;


