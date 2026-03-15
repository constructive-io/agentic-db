-- Deploy: schemas/agent_db_logging_public/tables/audit_logs/columns/origin/alterations/alt0000004056
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_logging_public/schema
-- requires: schemas/agent_db_logging_public/tables/audit_logs/table
-- requires: schemas/agent_db_logging_public/tables/audit_logs/columns/origin/column



ALTER TABLE "agent_db_logging_public".audit_logs 
    ALTER COLUMN origin SET DEFAULT jwt_public.current_origin();

