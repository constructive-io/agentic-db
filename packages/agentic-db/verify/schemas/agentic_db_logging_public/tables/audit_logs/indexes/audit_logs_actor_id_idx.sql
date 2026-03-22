-- Verify: schemas/agentic_db_logging_public/tables/audit_logs/indexes/audit_logs_actor_id_idx


SELECT verify_index('agentic_db_logging_public.audit_logs', 'audit_logs_actor_id_idx');


