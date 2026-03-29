-- Revert: schemas/agentic_db_app_public/tables/messages/triggers/messages_enqueue_embedding_insert_tg


DROP TRIGGER messages_enqueue_embedding_insert_tg ON agentic_db_app_public.messages;


