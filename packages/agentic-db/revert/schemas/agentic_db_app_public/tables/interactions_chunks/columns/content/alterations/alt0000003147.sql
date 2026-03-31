-- Revert: schemas/agentic_db_app_public/tables/interactions_chunks/columns/content/alterations/alt0000003147


ALTER TABLE agentic_db_app_public.interactions_chunks 
  ALTER COLUMN content DROP NOT NULL;


