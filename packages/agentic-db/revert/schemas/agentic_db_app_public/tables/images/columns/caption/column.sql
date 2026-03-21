-- Revert: schemas/agentic_db_app_public/tables/images/columns/caption/column


ALTER TABLE agentic_db_app_public.images 
  DROP COLUMN caption RESTRICT;


