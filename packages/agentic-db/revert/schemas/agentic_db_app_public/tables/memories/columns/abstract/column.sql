-- Revert: schemas/agentic_db_app_public/tables/memories/columns/abstract/column


ALTER TABLE agentic_db_app_public.memories 
  DROP COLUMN abstract RESTRICT;


