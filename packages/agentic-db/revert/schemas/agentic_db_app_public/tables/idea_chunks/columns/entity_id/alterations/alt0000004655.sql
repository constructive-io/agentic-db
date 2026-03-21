-- Revert: schemas/agentic_db_app_public/tables/idea_chunks/columns/entity_id/alterations/alt0000004655


ALTER TABLE agentic_db_app_public.idea_chunks 
  ALTER COLUMN entity_id DROP NOT NULL;


