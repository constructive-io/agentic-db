-- Deploy: schemas/agentic_db_app_public/tables/habit_logs/indexes/habit_logs_completed_at_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/habit_logs/table
-- requires: schemas/agentic_db_app_public/tables/habits/indexes/habits_category_idx
-- requires: schemas/agentic_db_app_public/tables/habit_logs/columns/completed_at/column


CREATE INDEX habit_logs_completed_at_idx ON "agentic_db_app_public".habit_logs USING BTREE ( completed_at );

