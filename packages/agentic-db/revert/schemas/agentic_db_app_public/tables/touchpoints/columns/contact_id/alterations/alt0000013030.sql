-- Revert: schemas/agentic_db_app_public/tables/touchpoints/columns/contact_id/alterations/alt0000013030


ALTER TABLE agentic_db_app_public.touchpoints 
  ALTER COLUMN contact_id DROP NOT NULL;


