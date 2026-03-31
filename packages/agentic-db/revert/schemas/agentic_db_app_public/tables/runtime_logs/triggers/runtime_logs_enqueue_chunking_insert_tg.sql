-- Revert: schemas/agentic_db_app_public/tables/runtime_logs/triggers/runtime_logs_enqueue_chunking_insert_tg


DROP TRIGGER runtime_logs_enqueue_chunking_insert_tg ON "agentic_db_app_public".runtime_logs;


