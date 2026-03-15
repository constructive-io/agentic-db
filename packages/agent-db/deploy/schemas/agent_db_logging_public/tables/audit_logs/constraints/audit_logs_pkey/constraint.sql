-- Deploy: schemas/agent_db_logging_public/tables/audit_logs/constraints/audit_logs_pkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_logging_public/schema
-- requires: schemas/agent_db_logging_public/tables/audit_logs/table


ALTER TABLE "agent_db_logging_public".audit_logs 
  ADD CONSTRAINT audit_logs_pkey PRIMARY KEY (id);

