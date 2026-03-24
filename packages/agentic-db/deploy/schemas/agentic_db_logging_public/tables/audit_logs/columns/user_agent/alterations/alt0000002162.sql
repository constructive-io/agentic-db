-- Deploy: schemas/agentic_db_logging_public/tables/audit_logs/columns/user_agent/alterations/alt0000002162
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_logging_public/schema
-- requires: schemas/agentic_db_logging_public/tables/audit_logs/table
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_logging_public/tables/audit_logs/columns/user_agent/column



ALTER TABLE agentic_db_logging_public.audit_logs 
    ALTER COLUMN user_agent SET DEFAULT jwt_public.current_user_agent();

