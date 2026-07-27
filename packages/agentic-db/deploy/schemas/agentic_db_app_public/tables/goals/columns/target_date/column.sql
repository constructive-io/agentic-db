-- Deploy: schemas/agentic_db_app_public/tables/goals/columns/target_date/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/goals/table


ALTER TABLE agentic_db_app_public.goals 
  ADD COLUMN target_date timestamptz;

