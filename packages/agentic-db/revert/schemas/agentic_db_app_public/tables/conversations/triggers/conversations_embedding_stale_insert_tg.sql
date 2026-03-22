-- Revert: schemas/agentic_db_app_public/tables/conversations/triggers/conversations_embedding_stale_insert_tg


DROP TRIGGER conversations_embedding_stale_insert_tg ON agentic_db_app_public.conversations;


