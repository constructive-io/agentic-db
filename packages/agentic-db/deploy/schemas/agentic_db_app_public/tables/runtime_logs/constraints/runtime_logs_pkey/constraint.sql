-- Deploy: schemas/agentic_db_app_public/tables/runtime_logs/constraints/runtime_logs_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_logs/table


ALTER TABLE agentic_db_app_public.runtime_logs 
  ADD CONSTRAINT runtime_logs_pkey PRIMARY KEY (id);

