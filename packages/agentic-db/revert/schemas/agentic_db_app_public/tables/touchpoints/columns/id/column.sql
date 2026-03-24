-- Revert: schemas/agentic_db_app_public/tables/touchpoints/columns/id/column


ALTER TABLE agentic_db_app_public.touchpoints 
  DROP COLUMN id RESTRICT;


