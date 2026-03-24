-- Deploy: schemas/agentic_db_app_public/tables/calendar_events_chunks/columns/updated_at/alterations/alt0000001849
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/calendar_events_chunks/table
-- requires: schemas/agentic_db_app_public/tables/habits/indexes/habits_is_active_idx
-- requires: schemas/agentic_db_app_public/tables/calendar_events_chunks/columns/updated_at/column


ALTER TABLE "agentic_db_app_public".calendar_events_chunks 
  ALTER COLUMN updated_at SET DEFAULT now();

