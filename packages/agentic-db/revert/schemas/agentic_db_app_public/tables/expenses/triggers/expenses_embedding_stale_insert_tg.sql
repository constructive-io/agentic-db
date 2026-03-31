-- Revert: schemas/agentic_db_app_public/tables/expenses/triggers/expenses_embedding_stale_insert_tg


DROP TRIGGER expenses_embedding_stale_insert_tg ON "agentic_db_app_public".expenses;


