-- Revert: schemas/agentic_db_app_public/tables/touchpoints/columns/occurred_at/alterations/alt0000003161


ALTER TABLE agentic_db_app_public.touchpoints 
  ALTER COLUMN occurred_at DROP NOT NULL;


