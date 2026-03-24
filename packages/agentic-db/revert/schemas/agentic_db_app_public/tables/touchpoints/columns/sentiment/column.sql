-- Revert: schemas/agentic_db_app_public/tables/touchpoints/columns/sentiment/column


ALTER TABLE agentic_db_app_public.touchpoints 
  DROP COLUMN sentiment RESTRICT;


