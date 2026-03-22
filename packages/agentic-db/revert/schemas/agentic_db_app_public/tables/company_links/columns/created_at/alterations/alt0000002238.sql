-- Revert: schemas/agentic_db_app_public/tables/company_links/columns/created_at/alterations/alt0000002238




ALTER TABLE agentic_db_app_public.company_links 
    ALTER COLUMN created_at DROP DEFAULT;



