-- Deploy: schemas/agent_db_logging_public/tables/audit_logs/columns/id/alterations/alt0000004050
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_logging_public/schema
-- requires: schemas/agent_db_logging_public/tables/audit_logs/table
-- requires: schemas/agent_db_logging_public/tables/audit_logs/columns/id/column



ALTER TABLE "agent_db_logging_public".audit_logs 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

