-- Revert: schemas/agentic_db_app_public/tables/touchpoints/columns/summary/column


ALTER TABLE agentic_db_app_public.touchpoints 
  DROP COLUMN summary RESTRICT;


