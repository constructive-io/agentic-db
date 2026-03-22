-- Revert: schemas/agentic_db_app_public/tables/memories/columns/updated_at/column


ALTER TABLE agentic_db_app_public.memories 
  DROP COLUMN updated_at RESTRICT;


