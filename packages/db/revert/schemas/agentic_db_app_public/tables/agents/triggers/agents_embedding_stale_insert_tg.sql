-- Revert: schemas/agentic_db_app_public/tables/agents/triggers/agents_embedding_stale_insert_tg


DROP TRIGGER agents_embedding_stale_insert_tg ON "agentic_db_app_public".agents;


