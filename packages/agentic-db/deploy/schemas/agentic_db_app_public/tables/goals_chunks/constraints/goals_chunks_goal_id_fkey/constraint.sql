-- Deploy: schemas/agentic_db_app_public/tables/goals_chunks/constraints/goals_chunks_goal_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/goals/table
-- requires: schemas/agentic_db_app_public/tables/goals_chunks/table
-- requires: schemas/agentic_db_app_public/tables/codebases_chunks/indexes/codebases_chunks_chunk_index_idx


ALTER TABLE agentic_db_app_public.goals_chunks 
  ADD CONSTRAINT goals_chunks_goal_id_fkey 
    FOREIGN KEY(goal_id) 
    REFERENCES agentic_db_app_public.goals (id) 
    ON DELETE CASCADE;

