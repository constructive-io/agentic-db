-- Deploy: schemas/agent_db_logging_public/tables/audit_logs/columns/ip_address/alterations/alt0000004012
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_logging_public/schema
-- requires: schemas/agent_db_logging_public/tables/audit_logs/table
-- requires: schemas/agent_db_logging_public/tables/audit_logs/columns/ip_address/column



ALTER TABLE "agent_db_logging_public".audit_logs 
    ALTER COLUMN ip_address SET DEFAULT jwt_public.current_ip_address();

