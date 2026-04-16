-- Deploy: schemas/agentic_db_app_public/tables/goal_projects/alterations/alt0000000670
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/goal_projects/table
-- requires: schemas/agentic_db_app_public/tables/goal_habits/indexes/goal_habits_habit_id_idx


COMMENT ON TABLE agentic_db_app_public.goal_projects IS E'@behavior +manyToMany';

