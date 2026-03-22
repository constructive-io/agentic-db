-- Deploy: schemas/agentic_db_app_public/tables/hiking_trails/policies/enable_row_level_security
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/hiking_trails/table
-- requires: schemas/agentic_db_app_public/tables/itinerary_items/triggers/itinerary_items_enqueue_embedding_update_tg


ALTER TABLE agentic_db_app_public.hiking_trails 
  ENABLE ROW LEVEL SECURITY;

