-- Revert: schemas/agentic_db_app_public/tables/touchpoints/columns/created_at/column


ALTER TABLE agentic_db_app_public.touchpoints 
  DROP COLUMN created_at RESTRICT;


