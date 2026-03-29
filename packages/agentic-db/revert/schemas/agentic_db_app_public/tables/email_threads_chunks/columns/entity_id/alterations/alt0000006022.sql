-- Revert: schemas/agentic_db_app_public/tables/email_threads_chunks/columns/entity_id/alterations/alt0000006022


ALTER TABLE agentic_db_app_public.email_threads_chunks 
  ALTER COLUMN entity_id DROP NOT NULL;


