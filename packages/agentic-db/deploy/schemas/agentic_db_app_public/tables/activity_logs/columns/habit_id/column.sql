-- Deploy: schemas/agentic_db_app_public/tables/activity_logs/columns/habit_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/activity_logs/table
-- requires: schemas/agentic_db_app_public/tables/autonomy_records/indexes/autonomy_records_source_idx


ALTER TABLE agentic_db_app_public.activity_logs 
  ADD COLUMN habit_id uuid;

