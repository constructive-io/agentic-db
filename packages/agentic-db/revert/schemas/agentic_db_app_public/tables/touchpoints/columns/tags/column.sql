-- Revert: schemas/agentic_db_app_public/tables/touchpoints/columns/tags/column


ALTER TABLE agentic_db_app_public.touchpoints 
  DROP COLUMN tags RESTRICT;


