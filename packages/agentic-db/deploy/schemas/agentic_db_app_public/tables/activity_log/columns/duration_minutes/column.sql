-- Deploy: schemas/agentic_db_app_public/tables/activity_log/columns/duration_minutes/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/activity_log/table
-- requires: schemas/agentic_db_app_public/tables/activity_log/columns/occurred_at/column


ALTER TABLE agentic_db_app_public.activity_log 
  ADD COLUMN duration_minutes numeric;

