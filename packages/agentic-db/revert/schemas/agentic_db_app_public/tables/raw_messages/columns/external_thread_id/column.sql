-- Revert: schemas/agentic_db_app_public/tables/raw_messages/columns/external_thread_id/column


ALTER TABLE agentic_db_app_public.raw_messages 
  DROP COLUMN external_thread_id RESTRICT;


