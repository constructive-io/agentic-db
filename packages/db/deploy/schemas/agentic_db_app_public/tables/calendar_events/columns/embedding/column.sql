-- Deploy: schemas/agentic_db_app_public/tables/calendar_events/columns/embedding/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/calendar_events/table
-- requires: schemas/agentic_db_app_public/tables/calendar_events/columns/embedding_text/column


ALTER TABLE "agentic_db_app_public".calendar_events 
  ADD COLUMN embedding vector(768);

