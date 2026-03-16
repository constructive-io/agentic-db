-- Verify: schemas/agent_db_logging_public/tables/audit_logs/indexes/audit_logs_event_idx


SELECT verify_index('agent_db_logging_public.audit_logs', 'audit_logs_event_idx');


