-- Revert: schemas/agentic_db_app_public/tables/memories/columns/title/alterations/alt0000000499


ALTER TABLE agentic_db_app_public.memories 
  ALTER COLUMN title DROP NOT NULL;


