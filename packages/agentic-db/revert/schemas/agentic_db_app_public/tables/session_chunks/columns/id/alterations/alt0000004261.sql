-- Revert: schemas/agentic_db_app_public/tables/session_chunks/columns/id/alterations/alt0000004261


ALTER TABLE agentic_db_app_public.session_chunks 
  ALTER COLUMN id DROP NOT NULL;


