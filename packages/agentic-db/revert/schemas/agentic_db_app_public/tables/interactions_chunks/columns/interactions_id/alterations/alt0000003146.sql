-- Revert: schemas/agentic_db_app_public/tables/interactions_chunks/columns/interactions_id/alterations/alt0000003146


ALTER TABLE agentic_db_app_public.interactions_chunks 
  ALTER COLUMN interactions_id DROP NOT NULL;


