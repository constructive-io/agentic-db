-- Revert: schemas/agentic_db_app_public/tables/touchpoints/columns/meta/column


ALTER TABLE agentic_db_app_public.touchpoints 
  DROP COLUMN meta RESTRICT;


