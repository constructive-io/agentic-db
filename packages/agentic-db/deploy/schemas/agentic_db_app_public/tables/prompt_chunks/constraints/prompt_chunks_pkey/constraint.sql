-- Deploy: schemas/agentic_db_app_public/tables/prompt_chunks/constraints/prompt_chunks_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/prompt_chunks/table
-- requires: schemas/agentic_db_app_public/tables/goal_chunks/columns/embedding/column


ALTER TABLE "agentic_db_app_public".prompt_chunks 
  ADD CONSTRAINT prompt_chunks_pkey PRIMARY KEY (id);

