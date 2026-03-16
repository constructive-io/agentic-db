-- Deploy: schemas/agent_db_logging_public/tables/audit_logs/grants/authenticated/select/grant
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_logging_public/schema
-- requires: schemas/agent_db_logging_public/tables/audit_logs/table


GRANT SELECT ON "agent_db_logging_public".audit_logs TO authenticated;

