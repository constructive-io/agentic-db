-- Revert: schemas/agentic_db_app_public/tables/prompts/triggers/prompts_embedding_stale_update_tg


DROP TRIGGER prompts_embedding_stale_update_tg ON "agentic_db_app_public".prompts;


