-- Revert: schemas/agentic_db_app_public/tables/company_links/columns/updated_at/alterations/alt0000000002


ALTER TABLE agentic_db_app_public.company_links 
  ALTER COLUMN updated_at DROP DEFAULT;


