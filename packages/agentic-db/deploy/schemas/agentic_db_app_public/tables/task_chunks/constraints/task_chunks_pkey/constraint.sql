-- Deploy: schemas/agentic_db_app_public/tables/task_chunks/constraints/task_chunks_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/task_chunks/table
-- requires: schemas/agentic_db_app_public/tables/prompts/columns/embedding/column


ALTER TABLE agentic_db_app_public.task_chunks 
  ADD CONSTRAINT task_chunks_pkey PRIMARY KEY (id);

