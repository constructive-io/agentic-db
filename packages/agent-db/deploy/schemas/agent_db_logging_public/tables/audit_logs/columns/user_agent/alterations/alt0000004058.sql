-- Deploy: schemas/agent_db_logging_public/tables/audit_logs/columns/user_agent/alterations/alt0000004058
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_logging_public/schema
-- requires: schemas/agent_db_logging_public/tables/audit_logs/table
-- requires: schemas/agent_db_logging_public/tables/audit_logs/columns/user_agent/column



ALTER TABLE "agent_db_logging_public".audit_logs 
    ALTER COLUMN user_agent SET DEFAULT jwt_public.current_user_agent();

