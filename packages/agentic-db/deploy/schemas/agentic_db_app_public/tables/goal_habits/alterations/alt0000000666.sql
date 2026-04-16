-- Deploy: schemas/agentic_db_app_public/tables/goal_habits/alterations/alt0000000666
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/goal_habits/table
-- requires: schemas/agentic_db_app_public/tables/task_projects/indexes/task_projects_project_id_idx


COMMENT ON TABLE agentic_db_app_public.goal_habits IS E'@behavior +manyToMany';

