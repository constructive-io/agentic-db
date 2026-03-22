-- Deploy: schemas/agentic_db_app_public/tables/interaction_chunks/columns/id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/interaction_chunks/table
-- requires: schemas/agentic_db_app_public/tables/note_chunks/triggers/note_chunks_enqueue_embedding_update_tg


ALTER TABLE agentic_db_app_public.interaction_chunks 
  ADD COLUMN id uuid;

