-- Deploy: schemas/agentic_db_app_public/tables/itinerary_item_chunks/triggers/itinerary_item_chunks_enqueue_embedding_update_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_private/schema
-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/itinerary_item_chunks/table
-- requires: schemas/agentic_db_private/trigger_fns/itinerary_item_chunks_enqueue_embedding
-- requires: schemas/agentic_db_app_public/tables/code_chunks/indexes/code_chunks_language_idx


CREATE TRIGGER itinerary_item_chunks_enqueue_embedding_update_tg
AFTER UPDATE ON agentic_db_app_public.itinerary_item_chunks
FOR EACH ROW
WHEN (NEW.embedding_stale IS TRUE)
EXECUTE PROCEDURE agentic_db_private.itinerary_item_chunks_enqueue_embedding ( );

