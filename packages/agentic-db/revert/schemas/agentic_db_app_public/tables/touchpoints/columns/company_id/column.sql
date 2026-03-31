-- Revert: schemas/agentic_db_app_public/tables/touchpoints/columns/company_id/column


ALTER TABLE agentic_db_app_public.touchpoints 
  DROP COLUMN company_id RESTRICT;


