-- Revert: schemas/agentic_db_app_public/tables/memories/columns/content/alterations/alt0000003977


ALTER TABLE agentic_db_app_public.memories 
  ALTER COLUMN content DROP NOT NULL;


