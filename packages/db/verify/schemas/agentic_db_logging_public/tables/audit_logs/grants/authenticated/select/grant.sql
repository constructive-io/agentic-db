-- Verify: schemas/agentic_db_logging_public/tables/audit_logs/grants/authenticated/select/grant


SELECT verify_table_grant('agentic_db_logging_public.audit_logs', 'select', 'authenticated');


