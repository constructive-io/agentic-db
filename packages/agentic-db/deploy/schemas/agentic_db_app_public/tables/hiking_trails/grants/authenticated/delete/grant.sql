-- Deploy: schemas/agentic_db_app_public/tables/hiking_trails/grants/authenticated/delete/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/hiking_trails/table
-- requires: schemas/agentic_db_app_public/tables/itinerary_items/triggers/itinerary_items_enqueue_embedding_update_tg


GRANT DELETE ON "agentic_db_app_public".hiking_trails TO authenticated;

