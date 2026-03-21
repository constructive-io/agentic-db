-- Deploy: schemas/agentic_db_app_public/tables/habit_logs/indexes/habit_logs_habit_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/habit_logs/table
-- requires: schemas/agentic_db_app_public/tables/habit_logs/columns/habit_id/column
-- requires: schemas/agentic_db_app_public/tables/template_chunks/columns/embedding/column


CREATE INDEX habit_logs_habit_id_idx ON agentic_db_app_public.habit_logs USING BTREE ( habit_id );

