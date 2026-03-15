-- Revert: schemas/agent_db_app_public/tables/company_links/columns/created_at/alterations/alt0000000928




ALTER TABLE agent_db_app_public.company_links 
    ALTER COLUMN created_at DROP DEFAULT;



