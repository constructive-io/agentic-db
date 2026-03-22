-- Deploy: schemas/agentic_db_app_public/tables/habit_chunks/constraints/habit_chunks_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/habit_chunks/table
-- requires: schemas/agentic_db_app_public/tables/code_chunks/indexes/code_chunks_language_idx


ALTER TABLE agentic_db_app_public.habit_chunks 
  ADD CONSTRAINT habit_chunks_pkey PRIMARY KEY (id);

