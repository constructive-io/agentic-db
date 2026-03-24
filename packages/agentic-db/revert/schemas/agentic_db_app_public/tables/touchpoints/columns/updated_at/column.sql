-- Revert: schemas/agentic_db_app_public/tables/touchpoints/columns/updated_at/column


ALTER TABLE agentic_db_app_public.touchpoints 
  DROP COLUMN updated_at RESTRICT;


