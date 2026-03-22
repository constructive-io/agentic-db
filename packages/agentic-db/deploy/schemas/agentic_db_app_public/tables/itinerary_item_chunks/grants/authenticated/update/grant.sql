-- Deploy: schemas/agentic_db_app_public/tables/itinerary_item_chunks/grants/authenticated/update/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/itinerary_item_chunks/table
-- requires: schemas/agentic_db_app_public/tables/place_chunks/triggers/place_chunks_enqueue_embedding_update_tg


GRANT UPDATE ON "agentic_db_app_public".itinerary_item_chunks TO authenticated;

