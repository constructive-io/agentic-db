-- Revert: schemas/agentic_db_logging_public/tables/audit_logs/grants/authenticated/select/grant


REVOKE SELECT ON agentic_db_logging_public.audit_logs FROM authenticated;


