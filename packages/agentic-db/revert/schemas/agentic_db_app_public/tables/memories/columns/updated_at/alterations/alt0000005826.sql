-- Revert: schemas/agentic_db_app_public/tables/memories/columns/updated_at/alterations/alt0000005826


ALTER TABLE agentic_db_app_public.memories 
  ALTER COLUMN updated_at DROP NOT NULL;


