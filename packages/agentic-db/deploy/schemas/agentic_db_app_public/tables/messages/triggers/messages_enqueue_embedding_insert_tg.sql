-- Deploy: schemas/agentic_db_app_public/tables/messages/triggers/messages_enqueue_embedding_insert_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_private/schema
-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/messages/table
-- requires: schemas/agentic_db_private/trigger_fns/messages_enqueue_embedding
-- requires: schemas/agentic_db_app_public/tables/tool_definitions_chunks/indexes/tool_definitions_chunks_chunk_index_idx


CREATE TRIGGER messages_enqueue_embedding_insert_tg
AFTER INSERT ON agentic_db_app_public.messages
FOR EACH ROW
WHEN (NEW.embedding_stale IS TRUE)
EXECUTE PROCEDURE agentic_db_private.messages_enqueue_embedding ( );

