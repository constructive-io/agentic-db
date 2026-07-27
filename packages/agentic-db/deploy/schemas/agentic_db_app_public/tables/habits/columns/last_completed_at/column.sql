-- Deploy: schemas/agentic_db_app_public/tables/habits/columns/last_completed_at/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/habits/table


ALTER TABLE agentic_db_app_public.habits 
  ADD COLUMN last_completed_at timestamptz;

