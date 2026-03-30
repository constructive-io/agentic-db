-- Revert: schemas/agentic_db_app_public/tables/prompts/triggers/prompts_enqueue_embedding_insert_tg


DROP TRIGGER prompts_enqueue_embedding_insert_tg ON "agentic_db_app_public".prompts;


