-- Deploy: schemas/agentic_db_app_public/tables/goal_projects/indexes/goal_projects_goal_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/goal_projects/table
-- requires: schemas/agentic_db_app_public/tables/goal_projects/columns/goal_id/column
-- requires: schemas/agentic_db_app_public/tables/goal_habits/indexes/goal_habits_habit_id_idx


CREATE INDEX goal_projects_goal_id_idx ON agentic_db_app_public.goal_projects USING BTREE ( goal_id );

