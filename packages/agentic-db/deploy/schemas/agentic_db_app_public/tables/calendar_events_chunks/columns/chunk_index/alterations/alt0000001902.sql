-- Deploy: schemas/agentic_db_app_public/tables/calendar_events_chunks/columns/chunk_index/alterations/alt0000001902
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/calendar_events_chunks/table
-- requires: schemas/agentic_db_app_public/tables/places/indexes/places_category_idx
-- requires: schemas/agentic_db_app_public/tables/calendar_events_chunks/columns/chunk_index/column



ALTER TABLE "agentic_db_app_public".calendar_events_chunks 
    ALTER COLUMN chunk_index SET DEFAULT 0;

