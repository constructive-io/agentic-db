-- Deploy: schemas/agentic_db_app_public/tables/itinerary_items/triggers/itinerary_items_embedding_stale_update_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_private/schema
-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/itinerary_items/table
-- requires: schemas/agentic_db_private/trigger_fns/itinerary_items_embedding_stale
-- requires: schemas/agentic_db_app_public/tables/code_chunks/indexes/code_chunks_language_idx


CREATE TRIGGER itinerary_items_embedding_stale_update_tg
BEFORE UPDATE ON agentic_db_app_public.itinerary_items
FOR EACH ROW
WHEN (OLD.name IS DISTINCT FROM NEW.name OR OLD.description IS DISTINCT FROM NEW.description OR OLD.notes IS DISTINCT FROM NEW.notes)
EXECUTE PROCEDURE agentic_db_private.itinerary_items_embedding_stale ( );

