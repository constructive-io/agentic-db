-- Revert: schemas/agentic_db_app_public/tables/idea_chunks/columns/idea_id/alterations/alt0000004702


ALTER TABLE agentic_db_app_public.idea_chunks 
  ALTER COLUMN idea_id DROP NOT NULL;


