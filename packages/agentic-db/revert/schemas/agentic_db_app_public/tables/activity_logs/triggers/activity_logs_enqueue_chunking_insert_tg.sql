-- Revert: schemas/agentic_db_app_public/tables/activity_logs/triggers/activity_logs_enqueue_chunking_insert_tg


DROP TRIGGER activity_logs_enqueue_chunking_insert_tg ON "agentic_db_app_public".activity_logs;


