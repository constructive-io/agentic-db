-- Deploy: schemas/agentic_db_app_public/tables/goal_habits/indexes/goal_habits_habit_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/goal_habits/table
-- requires: schemas/agentic_db_app_public/tables/goal_habits/columns/habit_id/column
-- requires: schemas/agentic_db_app_public/tables/task_projects/policies/auth_del_entity_membership/policy


CREATE INDEX goal_habits_habit_id_idx ON agentic_db_app_public.goal_habits USING BTREE ( habit_id );

