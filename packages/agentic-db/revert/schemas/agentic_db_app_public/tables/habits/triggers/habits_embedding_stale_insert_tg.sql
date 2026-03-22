-- Revert: schemas/agentic_db_app_public/tables/habits/triggers/habits_embedding_stale_insert_tg


DROP TRIGGER habits_embedding_stale_insert_tg ON "agentic_db_app_public".habits;


