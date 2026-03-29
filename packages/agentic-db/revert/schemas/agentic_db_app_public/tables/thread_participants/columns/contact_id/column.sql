-- Revert: schemas/agentic_db_app_public/tables/thread_participants/columns/contact_id/column


ALTER TABLE agentic_db_app_public.thread_participants 
  DROP COLUMN contact_id RESTRICT;


