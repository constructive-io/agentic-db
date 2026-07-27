-- Deploy: schemas/agentic_db_app_public/tables/goal_habits/alterations/alt0000000002
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/goal_habits/table


COMMENT ON TABLE agentic_db_app_public.goal_habits IS E'@behavior +manyToMany';

