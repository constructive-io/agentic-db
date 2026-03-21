-- Revert: schemas/agentic_db_app_public/tables/tags/columns/color/column


ALTER TABLE agentic_db_app_public.tags 
  DROP COLUMN color RESTRICT;


