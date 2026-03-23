-- Deploy: schemas/agentic_db_app_public/tables/goals_chunks/constraints/goals_chunks_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/goals_chunks/table
-- requires: schemas/agentic_db_app_public/tables/code_chunks/indexes/code_chunks_language_idx


ALTER TABLE "agentic_db_app_public".goals_chunks 
  ADD CONSTRAINT goals_chunks_pkey PRIMARY KEY (id);

