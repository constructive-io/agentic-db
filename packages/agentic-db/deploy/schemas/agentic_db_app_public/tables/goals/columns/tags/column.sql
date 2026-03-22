-- Deploy: schemas/agentic_db_app_public/tables/goals/columns/tags/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/goals/table
-- requires: schemas/agentic_db_app_public/tables/goals/columns/progress/alterations/alt0000006279


ALTER TABLE agentic_db_app_public.goals 
  ADD COLUMN tags citext[];

