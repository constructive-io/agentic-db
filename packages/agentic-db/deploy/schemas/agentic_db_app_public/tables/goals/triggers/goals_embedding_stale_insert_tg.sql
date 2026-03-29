-- Deploy: schemas/agentic_db_app_public/tables/goals/triggers/goals_embedding_stale_insert_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_private/schema
-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/goals/table
-- requires: schemas/agentic_db_private/trigger_fns/goals_embedding_stale
-- requires: schemas/agentic_db_app_public/tables/codebases_chunks/indexes/codebases_chunks_chunk_index_idx


CREATE TRIGGER goals_embedding_stale_insert_tg
BEFORE INSERT ON agentic_db_app_public.goals
FOR EACH ROW
EXECUTE PROCEDURE agentic_db_private.goals_embedding_stale ( );

