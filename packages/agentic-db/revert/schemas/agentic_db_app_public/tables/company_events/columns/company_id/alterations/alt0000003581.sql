-- Revert: schemas/agentic_db_app_public/tables/company_events/columns/company_id/alterations/alt0000003581


ALTER TABLE agentic_db_app_public.company_events 
  ALTER COLUMN company_id DROP NOT NULL;


