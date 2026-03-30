-- Revert: schemas/agentic_db_app_public/tables/tasks/triggers/tasks_embedding_stale_insert_tg


DROP TRIGGER tasks_embedding_stale_insert_tg ON "agentic_db_app_public".tasks;


