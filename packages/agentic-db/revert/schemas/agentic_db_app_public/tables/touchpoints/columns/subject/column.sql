-- Revert: schemas/agentic_db_app_public/tables/touchpoints/columns/subject/column


ALTER TABLE agentic_db_app_public.touchpoints 
  DROP COLUMN subject RESTRICT;


