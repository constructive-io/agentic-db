-- Deploy: schemas/agentic_db_app_public/tables/skills/triggers/skills_enqueue_embedding_update_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_private/schema
-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/skills/table
-- requires: schemas/agentic_db_private/trigger_fns/skills_enqueue_embedding
-- requires: schemas/agentic_db_app_public/tables/venues_chunks/indexes/venues_chunks_chunk_index_idx


CREATE TRIGGER skills_enqueue_embedding_update_tg
AFTER UPDATE ON agentic_db_app_public.skills
FOR EACH ROW
WHEN (NEW.embedding_stale IS TRUE)
EXECUTE PROCEDURE agentic_db_private.skills_enqueue_embedding ( );

