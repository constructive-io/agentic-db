-- Deploy: schemas/agentic_db_app_public/tables/goal_chunks/constraints/goal_chunks_goal_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/goals/table
-- requires: schemas/agentic_db_app_public/tables/goal_chunks/table
-- requires: schemas/agentic_db_app_public/tables/skill_chunks/indexes/skill_chunks_skill_id_idx


ALTER TABLE agentic_db_app_public.goal_chunks 
  ADD CONSTRAINT goal_chunks_goal_id_fkey 
    FOREIGN KEY(goal_id) 
    REFERENCES agentic_db_app_public.goals (id) 
    ON DELETE CASCADE;

