-- Revert: schemas/agentic_db_app_public/tables/session_chunks/columns/entity_id/alterations/alt0000004263


ALTER TABLE agentic_db_app_public.session_chunks 
  ALTER COLUMN entity_id DROP NOT NULL;


