-- Revert: schemas/agentic_db_app_public/tables/conversations/triggers/conversations_enqueue_chunking_insert_tg


DROP TRIGGER conversations_enqueue_chunking_insert_tg ON "agentic_db_app_public".conversations;


