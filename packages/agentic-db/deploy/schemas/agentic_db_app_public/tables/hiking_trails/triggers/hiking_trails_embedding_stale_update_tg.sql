-- Deploy: schemas/agentic_db_app_public/tables/hiking_trails/triggers/hiking_trails_embedding_stale_update_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_private/schema
-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/hiking_trails/table
-- requires: schemas/agentic_db_private/trigger_fns/hiking_trails_embedding_stale
-- requires: schemas/agentic_db_app_public/tables/code_chunks/indexes/code_chunks_language_idx


CREATE TRIGGER hiking_trails_embedding_stale_update_tg
BEFORE UPDATE ON "agentic_db_app_public".hiking_trails
FOR EACH ROW
WHEN (OLD.name IS DISTINCT FROM NEW.name OR OLD.description IS DISTINCT FROM NEW.description OR OLD.location IS DISTINCT FROM NEW.location)
EXECUTE PROCEDURE "agentic_db_private".hiking_trails_embedding_stale ( );

