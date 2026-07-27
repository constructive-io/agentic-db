-- Deploy: schemas/agentic_db_app_public/tables/venues/triggers/venues_embedding_stale_update_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_private/schema
-- requires: schemas/agentic_db_app_public/tables/venues/table
-- requires: schemas/agentic_db_app_private/trigger_fns/venues_embedding_stale


CREATE TRIGGER venues_embedding_stale_update_tg
BEFORE UPDATE ON agentic_db_app_public.venues
FOR EACH ROW
WHEN (OLD.name IS DISTINCT FROM NEW.name OR OLD.notes IS DISTINCT FROM NEW.notes OR OLD.neighborhood IS DISTINCT FROM NEW.neighborhood)
EXECUTE PROCEDURE agentic_db_app_private.venues_embedding_stale ( );

