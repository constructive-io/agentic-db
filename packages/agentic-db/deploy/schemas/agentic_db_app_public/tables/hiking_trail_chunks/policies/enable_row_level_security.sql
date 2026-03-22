-- Deploy: schemas/agentic_db_app_public/tables/hiking_trail_chunks/policies/enable_row_level_security
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/hiking_trail_chunks/table
-- requires: schemas/agentic_db_app_public/tables/itinerary_item_chunks/triggers/itinerary_item_chunks_enqueue_embedding_update_tg


ALTER TABLE "agentic_db_app_public".hiking_trail_chunks 
  ENABLE ROW LEVEL SECURITY;

