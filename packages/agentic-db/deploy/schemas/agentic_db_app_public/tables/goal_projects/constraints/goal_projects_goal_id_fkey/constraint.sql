-- Deploy: schemas/agentic_db_app_public/tables/goal_projects/constraints/goal_projects_goal_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/goals/table
-- requires: schemas/agentic_db_app_public/tables/goal_projects/table


ALTER TABLE agentic_db_app_public.goal_projects 
  ADD CONSTRAINT goal_projects_goal_id_fkey 
    FOREIGN KEY(goal_id) 
    REFERENCES agentic_db_app_public.goals (id) 
    ON DELETE CASCADE;

