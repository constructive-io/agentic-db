-- Deploy: schemas/agentic_db_app_public/tables/places/triggers/places_embedding_stale_update_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_private/schema
-- requires: schemas/agentic_db_app_public/tables/places/table
-- requires: schemas/agentic_db_app_private/trigger_fns/places_embedding_stale


CREATE TRIGGER places_embedding_stale_update_tg
BEFORE UPDATE ON agentic_db_app_public.places
FOR EACH ROW
WHEN (OLD.name IS DISTINCT FROM NEW.name OR OLD.description IS DISTINCT FROM NEW.description OR OLD.address IS DISTINCT FROM NEW.address)
EXECUTE PROCEDURE agentic_db_app_private.places_embedding_stale ( );

