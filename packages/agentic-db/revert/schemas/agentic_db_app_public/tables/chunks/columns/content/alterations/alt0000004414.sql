-- Revert: schemas/agentic_db_app_public/tables/chunks/columns/content/alterations/alt0000004414


ALTER TABLE agentic_db_app_public.chunks 
  ALTER COLUMN content DROP NOT NULL;


