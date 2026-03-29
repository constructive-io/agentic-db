-- Revert: schemas/agentic_db_app_public/tables/touchpoints/columns/embedding/column


ALTER TABLE agentic_db_app_public.touchpoints 
  DROP COLUMN embedding RESTRICT;


