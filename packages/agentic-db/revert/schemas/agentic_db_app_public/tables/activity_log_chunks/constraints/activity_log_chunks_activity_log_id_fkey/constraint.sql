-- Revert: schemas/agentic_db_app_public/tables/activity_log_chunks/constraints/activity_log_chunks_activity_log_id_fkey/constraint


ALTER TABLE agentic_db_app_public.activity_log_chunks 
  DROP CONSTRAINT activity_log_chunks_activity_log_id_fkey;


