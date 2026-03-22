-- Revert: schemas/agentic_db_app_public/tables/memories/columns/created_at/alterations/alt0000002788


ALTER TABLE agentic_db_app_public.memories 
  ALTER COLUMN created_at DROP NOT NULL;


