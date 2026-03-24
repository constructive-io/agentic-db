-- Deploy: schemas/agentic_db_app_public/tables/calendar_events_chunks/alterations/alt0000001840
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/calendar_events_chunks/table
-- requires: schemas/agentic_db_app_public/tables/habits/indexes/habits_is_active_idx


ALTER TABLE "agentic_db_app_public".calendar_events_chunks 
  DISABLE ROW LEVEL SECURITY;

