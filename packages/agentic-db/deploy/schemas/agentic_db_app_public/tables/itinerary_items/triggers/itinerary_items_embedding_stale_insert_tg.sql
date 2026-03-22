-- Deploy: schemas/agentic_db_app_public/tables/itinerary_items/triggers/itinerary_items_embedding_stale_insert_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_private/schema
-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/itinerary_items/table
-- requires: schemas/agentic_db_private/trigger_fns/itinerary_items_embedding_stale
-- requires: schemas/agentic_db_app_public/tables/itinerary_items/columns/embedding_text/column


CREATE TRIGGER itinerary_items_embedding_stale_insert_tg
BEFORE INSERT ON agentic_db_app_public.itinerary_items
FOR EACH ROW
EXECUTE PROCEDURE agentic_db_private.itinerary_items_embedding_stale ( );

