-- Revert: schemas/agentic_db_app_public/tables/activity_logs_chunks/constraints/activity_logs_chunks_activity_logs_id_fkey/constraint


ALTER TABLE agentic_db_app_public.activity_logs_chunks 
  DROP CONSTRAINT activity_logs_chunks_activity_logs_id_fkey;


