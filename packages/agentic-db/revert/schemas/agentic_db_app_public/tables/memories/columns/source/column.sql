-- Revert: schemas/agentic_db_app_public/tables/memories/columns/source/column


ALTER TABLE agentic_db_app_public.memories 
  DROP COLUMN source RESTRICT;


