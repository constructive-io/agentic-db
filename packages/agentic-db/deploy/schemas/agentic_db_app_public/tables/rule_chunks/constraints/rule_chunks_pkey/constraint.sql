-- Deploy: schemas/agentic_db_app_public/tables/rule_chunks/constraints/rule_chunks_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/rule_chunks/table
-- requires: schemas/agentic_db_app_public/tables/task_chunks/columns/embedding/column


ALTER TABLE agentic_db_app_public.rule_chunks 
  ADD CONSTRAINT rule_chunks_pkey PRIMARY KEY (id);

