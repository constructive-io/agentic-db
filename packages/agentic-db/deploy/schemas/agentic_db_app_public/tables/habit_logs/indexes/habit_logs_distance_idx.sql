-- Deploy: schemas/agentic_db_app_public/tables/habit_logs/indexes/habit_logs_distance_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/habit_logs/table
-- requires: schemas/agentic_db_app_public/tables/habit_logs/columns/distance/column
-- requires: schemas/agentic_db_app_public/tables/habit_logs/indexes/habit_logs_duration_minutes_idx


CREATE INDEX habit_logs_distance_idx ON agentic_db_app_public.habit_logs USING BTREE ( distance );

