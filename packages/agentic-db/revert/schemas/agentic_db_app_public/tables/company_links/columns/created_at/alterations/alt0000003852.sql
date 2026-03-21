-- Revert: schemas/agentic_db_app_public/tables/company_links/columns/created_at/alterations/alt0000003852




ALTER TABLE agentic_db_app_public.company_links 
    ALTER COLUMN created_at DROP DEFAULT;



