-- Deploy: schemas/agentic_db_app_public/tables/messages/triggers/messages_enqueue_embedding_update_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_private/schema
-- requires: schemas/agentic_db_app_public/tables/messages/table
-- requires: schemas/agentic_db_app_private/trigger_fns/messages_enqueue_embedding


CREATE TRIGGER messages_enqueue_embedding_update_tg
AFTER UPDATE ON agentic_db_app_public.messages
FOR EACH ROW
WHEN (NEW.embedding_updated_at IS NULL)
EXECUTE PROCEDURE agentic_db_app_private.messages_enqueue_embedding ( );

