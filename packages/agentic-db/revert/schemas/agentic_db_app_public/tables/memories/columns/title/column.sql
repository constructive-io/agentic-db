-- Revert: schemas/agentic_db_app_public/tables/memories/columns/title/column


ALTER TABLE agentic_db_app_public.memories 
  DROP COLUMN title RESTRICT;


