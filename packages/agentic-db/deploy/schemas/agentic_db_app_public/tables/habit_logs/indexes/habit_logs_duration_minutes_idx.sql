-- Deploy: schemas/agentic_db_app_public/tables/habit_logs/indexes/habit_logs_duration_minutes_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/habit_logs/table
-- requires: schemas/agentic_db_app_public/tables/habit_logs/columns/duration_minutes/column
-- requires: schemas/agentic_db_app_public/tables/habit_logs/indexes/habit_logs_activity_type_idx


CREATE INDEX habit_logs_duration_minutes_idx ON "agentic_db_app_public".habit_logs USING BTREE ( duration_minutes );

