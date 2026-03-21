-- Revert: schemas/agentic_db_app_public/tables/contact_companies/columns/contact_id/column


ALTER TABLE agentic_db_app_public.contact_companies 
  DROP COLUMN contact_id RESTRICT;


