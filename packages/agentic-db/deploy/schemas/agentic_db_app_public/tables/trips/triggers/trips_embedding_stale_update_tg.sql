-- Deploy: schemas/agentic_db_app_public/tables/trips/triggers/trips_embedding_stale_update_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_private/schema
-- requires: schemas/agentic_db_app_public/tables/trips/table
-- requires: schemas/agentic_db_app_private/trigger_fns/trips_embedding_stale


CREATE TRIGGER trips_embedding_stale_update_tg
BEFORE UPDATE ON agentic_db_app_public.trips
FOR EACH ROW
WHEN (OLD.name IS DISTINCT FROM NEW.name OR OLD.description IS DISTINCT FROM NEW.description OR OLD.destination IS DISTINCT FROM NEW.destination)
EXECUTE PROCEDURE agentic_db_app_private.trips_embedding_stale ( );

