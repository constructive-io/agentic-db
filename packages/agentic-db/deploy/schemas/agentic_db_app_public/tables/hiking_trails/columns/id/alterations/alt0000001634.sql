-- Deploy: schemas/agentic_db_app_public/tables/hiking_trails/columns/id/alterations/alt0000001634
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/hiking_trails/table
-- requires: schemas/agentic_db_app_public/tables/hiking_trails/columns/id/column
-- requires: schemas/agentic_db_app_public/tables/itinerary_items/triggers/itinerary_items_enqueue_embedding_update_tg


ALTER TABLE "agentic_db_app_public".hiking_trails 
  ALTER COLUMN id SET NOT NULL;

