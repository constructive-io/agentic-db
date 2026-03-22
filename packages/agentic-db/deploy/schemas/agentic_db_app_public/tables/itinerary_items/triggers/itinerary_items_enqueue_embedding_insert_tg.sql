-- Deploy: schemas/agentic_db_app_public/tables/itinerary_items/triggers/itinerary_items_enqueue_embedding_insert_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_private/schema
-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/itinerary_items/table
-- requires: schemas/agentic_db_private/trigger_fns/itinerary_items_enqueue_embedding
-- requires: schemas/agentic_db_app_public/tables/itinerary_items/columns/embedding_text/column


CREATE TRIGGER itinerary_items_enqueue_embedding_insert_tg
AFTER INSERT ON "agentic_db_app_public".itinerary_items
FOR EACH ROW
WHEN (NEW.embedding_stale IS TRUE)
EXECUTE PROCEDURE "agentic_db_private".itinerary_items_enqueue_embedding ( );

