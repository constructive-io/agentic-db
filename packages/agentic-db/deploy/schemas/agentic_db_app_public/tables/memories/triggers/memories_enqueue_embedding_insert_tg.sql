-- Deploy: schemas/agentic_db_app_public/tables/memories/triggers/memories_enqueue_embedding_insert_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_private/schema
-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/memories/table
-- requires: schemas/agentic_db_private/trigger_fns/memories_enqueue_embedding
-- requires: schemas/agentic_db_app_public/tables/projects/indexes/projects_priority_idx


CREATE TRIGGER memories_enqueue_embedding_insert_tg
AFTER INSERT ON agentic_db_app_public.memories
FOR EACH ROW
WHEN (NEW.embedding_stale IS TRUE)
EXECUTE PROCEDURE "agentic_db_private".memories_enqueue_embedding ( );

