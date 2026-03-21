-- Deploy: schemas/agentic_db_app_public/tables/activity_log/columns/title/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/activity_log/table
-- requires: schemas/agentic_db_app_public/tables/activity_log/columns/activity_type/alterations/alt0000004249


ALTER TABLE agentic_db_app_public.activity_log 
  ADD COLUMN title text;

