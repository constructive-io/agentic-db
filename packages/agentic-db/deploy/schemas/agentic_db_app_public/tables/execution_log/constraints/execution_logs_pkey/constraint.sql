-- Deploy: schemas/agentic_db_app_public/tables/execution_log/constraints/execution_logs_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/execution_log/table
-- requires: schemas/agentic_db_app_public/tables/sessions/columns/embedding/column


ALTER TABLE agentic_db_app_public.execution_log 
  ADD CONSTRAINT execution_logs_pkey PRIMARY KEY (id);

