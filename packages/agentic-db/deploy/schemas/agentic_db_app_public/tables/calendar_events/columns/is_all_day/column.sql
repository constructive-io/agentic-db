-- Deploy: schemas/agentic_db_app_public/tables/calendar_events/columns/is_all_day/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/calendar_events/table
-- requires: schemas/agentic_db_app_public/tables/habits/indexes/habits_is_active_idx


ALTER TABLE "agentic_db_app_public".calendar_events 
  ADD COLUMN is_all_day bool;

