-- Revert: schemas/agentic_db_app_public/tables/touchpoints/columns/id/alterations/alt0000015286


ALTER TABLE agentic_db_app_public.touchpoints 
  ALTER COLUMN id DROP NOT NULL;


