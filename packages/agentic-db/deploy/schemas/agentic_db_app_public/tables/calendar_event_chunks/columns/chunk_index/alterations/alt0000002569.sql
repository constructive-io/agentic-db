-- Deploy: schemas/agentic_db_app_public/tables/calendar_event_chunks/columns/chunk_index/alterations/alt0000002569
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/calendar_event_chunks/table
-- requires: schemas/agentic_db_app_public/tables/calendar_event_chunks/columns/chunk_index/column
-- requires: schemas/agentic_db_app_public/tables/calendar_event_chunks/columns/updated_at/alterations/alt0000002568


ALTER TABLE "agentic_db_app_public".calendar_event_chunks 
  ALTER COLUMN chunk_index SET NOT NULL;

