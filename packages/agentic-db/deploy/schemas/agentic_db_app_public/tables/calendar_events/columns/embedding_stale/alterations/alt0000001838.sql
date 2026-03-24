-- Deploy: schemas/agentic_db_app_public/tables/calendar_events/columns/embedding_stale/alterations/alt0000001838
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/calendar_events/table
-- requires: schemas/agentic_db_app_public/tables/habits/indexes/habits_is_active_idx
-- requires: schemas/agentic_db_app_public/tables/calendar_events/columns/embedding_stale/column


ALTER TABLE "agentic_db_app_public".calendar_events 
  ALTER COLUMN embedding_stale SET NOT NULL;

