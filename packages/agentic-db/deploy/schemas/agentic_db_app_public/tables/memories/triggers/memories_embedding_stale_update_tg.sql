-- Deploy: schemas/agentic_db_app_public/tables/memories/triggers/memories_embedding_stale_update_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_private/schema
-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/memories/table
-- requires: schemas/agentic_db_private/trigger_fns/memories_embedding_stale
-- requires: schemas/agentic_db_app_public/tables/projects/indexes/projects_priority_idx


CREATE TRIGGER memories_embedding_stale_update_tg
BEFORE UPDATE ON agentic_db_app_public.memories
FOR EACH ROW
WHEN (OLD.title IS DISTINCT FROM NEW.title OR OLD.content IS DISTINCT FROM NEW.content OR OLD.location IS DISTINCT FROM NEW.location)
EXECUTE PROCEDURE "agentic_db_private".memories_embedding_stale ( );

