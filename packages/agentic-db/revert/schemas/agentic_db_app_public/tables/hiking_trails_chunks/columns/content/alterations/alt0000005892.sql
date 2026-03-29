-- Revert: schemas/agentic_db_app_public/tables/hiking_trails_chunks/columns/content/alterations/alt0000005892


ALTER TABLE agentic_db_app_public.hiking_trails_chunks 
  ALTER COLUMN content DROP NOT NULL;


