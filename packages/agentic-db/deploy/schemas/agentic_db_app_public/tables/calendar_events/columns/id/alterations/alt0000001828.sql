-- Deploy: schemas/agentic_db_app_public/tables/calendar_events/columns/id/alterations/alt0000001828
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/calendar_events/table
-- requires: schemas/agentic_db_app_public/tables/calendar_events/columns/id/column
-- requires: schemas/agentic_db_app_public/tables/habits/indexes/habits_is_active_idx


ALTER TABLE "agentic_db_app_public".calendar_events 
  ALTER COLUMN id SET NOT NULL;

