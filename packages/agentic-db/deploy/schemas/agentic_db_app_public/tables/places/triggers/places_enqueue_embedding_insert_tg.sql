-- Deploy: schemas/agentic_db_app_public/tables/places/triggers/places_enqueue_embedding_insert_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_private/schema
-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/places/table
-- requires: schemas/agentic_db_private/trigger_fns/places_enqueue_embedding
-- requires: schemas/agentic_db_app_public/tables/projects/indexes/projects_priority_idx


CREATE TRIGGER places_enqueue_embedding_insert_tg
AFTER INSERT ON agentic_db_app_public.places
FOR EACH ROW
WHEN (NEW.embedding_stale IS TRUE)
EXECUTE PROCEDURE "agentic_db_private".places_enqueue_embedding ( );

