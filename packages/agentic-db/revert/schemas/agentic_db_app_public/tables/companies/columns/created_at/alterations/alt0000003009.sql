-- Revert: schemas/agentic_db_app_public/tables/companies/columns/created_at/alterations/alt0000003009




ALTER TABLE agentic_db_app_public.companies 
    ALTER COLUMN created_at DROP DEFAULT;



