-- Deploy: schemas/agentic_db_app_public/tables/goal_habits/constraints/goal_habits_goal_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/goals/table
-- requires: schemas/agentic_db_app_public/tables/goal_habits/table
-- requires: schemas/agentic_db_app_public/tables/documents/indexes/documents_file_path_idx


ALTER TABLE agentic_db_app_public.goal_habits 
  ADD CONSTRAINT goal_habits_goal_id_fkey 
    FOREIGN KEY(goal_id) 
    REFERENCES agentic_db_app_public.goals (id) 
    ON DELETE CASCADE;

