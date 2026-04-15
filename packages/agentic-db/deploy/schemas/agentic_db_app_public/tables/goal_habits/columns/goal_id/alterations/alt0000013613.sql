-- Deploy: schemas/agentic_db_app_public/tables/goal_habits/columns/goal_id/alterations/alt0000013613
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/goal_habits/table
-- requires: schemas/agentic_db_app_public/tables/goal_habits/columns/goal_id/column
-- requires: schemas/agentic_db_app_public/tables/task_projects/indexes/task_projects_project_id_idx


ALTER TABLE agentic_db_app_public.goal_habits 
  ALTER COLUMN goal_id SET NOT NULL;

