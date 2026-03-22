-- Deploy: schemas/agentic_db_app_public/tables/note_chunks/columns/entity_id/alterations/alt0000001035
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/note_chunks/table
-- requires: schemas/agentic_db_app_public/tables/note_chunks/columns/entity_id/column
-- requires: schemas/agentic_db_app_public/tables/venue_chunks/triggers/venue_chunks_enqueue_embedding_update_tg


ALTER TABLE "agentic_db_app_public".note_chunks 
  ALTER COLUMN entity_id SET NOT NULL;

