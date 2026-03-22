-- Deploy: schemas/agentic_db_app_public/tables/venue_chunks/columns/id/alterations/alt0000005695
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/venue_chunks/table
-- requires: schemas/agentic_db_app_public/tables/venue_chunks/columns/id/column
-- requires: schemas/agentic_db_app_public/tables/event_chunks/triggers/event_chunks_enqueue_embedding_update_tg



ALTER TABLE agentic_db_app_public.venue_chunks 
    ALTER COLUMN id SET DEFAULT uuidv7();

