-- Deploy: schemas/agentic_db_app_public/tables/place_chunks/columns/id/alterations/alt0000006314
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/place_chunks/table
-- requires: schemas/agentic_db_app_public/tables/place_chunks/columns/id/column
-- requires: schemas/agentic_db_app_public/tables/trip_chunks/triggers/trip_chunks_enqueue_embedding_update_tg


ALTER TABLE agentic_db_app_public.place_chunks 
  ALTER COLUMN id SET NOT NULL;

