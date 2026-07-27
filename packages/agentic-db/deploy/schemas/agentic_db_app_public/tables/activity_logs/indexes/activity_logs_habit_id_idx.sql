-- Deploy: schemas/agentic_db_app_public/tables/activity_logs/indexes/activity_logs_habit_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/activity_logs/table
-- requires: schemas/agentic_db_app_public/tables/activity_logs/columns/habit_id/column


CREATE INDEX activity_logs_habit_id_idx ON agentic_db_app_public.activity_logs USING BTREE ( habit_id );

