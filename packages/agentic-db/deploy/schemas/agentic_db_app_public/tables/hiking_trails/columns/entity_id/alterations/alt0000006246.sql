-- Deploy: schemas/agentic_db_app_public/tables/hiking_trails/columns/entity_id/alterations/alt0000006246
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/hiking_trails/table
-- requires: schemas/agentic_db_app_public/tables/hiking_trails/columns/entity_id/column
-- requires: schemas/agentic_db_app_public/tables/itinerary_items/triggers/itinerary_items_enqueue_embedding_update_tg


ALTER TABLE agentic_db_app_public.hiking_trails 
  ALTER COLUMN entity_id SET NOT NULL;

