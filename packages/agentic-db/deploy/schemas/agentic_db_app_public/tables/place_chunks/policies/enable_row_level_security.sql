-- Deploy: schemas/agentic_db_app_public/tables/place_chunks/policies/enable_row_level_security
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/place_chunks/table
-- requires: schemas/agentic_db_app_public/tables/trip_chunks/triggers/trip_chunks_enqueue_embedding_update_tg


ALTER TABLE "agentic_db_app_public".place_chunks 
  ENABLE ROW LEVEL SECURITY;

