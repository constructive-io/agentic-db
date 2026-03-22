-- Deploy: schemas/agentic_db_app_public/tables/venue_chunks/policies/enable_row_level_security
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/venue_chunks/table
-- requires: schemas/agentic_db_app_public/tables/event_chunks/triggers/event_chunks_enqueue_embedding_update_tg


ALTER TABLE agentic_db_app_public.venue_chunks 
  ENABLE ROW LEVEL SECURITY;

