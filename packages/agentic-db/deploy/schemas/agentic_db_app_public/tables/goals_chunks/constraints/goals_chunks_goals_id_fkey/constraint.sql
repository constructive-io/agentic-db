-- Deploy: schemas/agentic_db_app_public/tables/goals_chunks/constraints/goals_chunks_goals_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/goals/table
-- requires: schemas/agentic_db_app_public/tables/goals_chunks/table
-- requires: schemas/agentic_db_app_public/tables/code_chunks/indexes/code_chunks_language_idx


ALTER TABLE "agentic_db_app_public".goals_chunks 
  ADD CONSTRAINT goals_chunks_goals_id_fkey 
    FOREIGN KEY(goals_id) 
    REFERENCES "agentic_db_app_public".goals (id) 
    ON DELETE CASCADE;

