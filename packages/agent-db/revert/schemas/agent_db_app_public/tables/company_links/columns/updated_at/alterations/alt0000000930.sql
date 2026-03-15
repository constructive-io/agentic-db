-- Revert: schemas/agent_db_app_public/tables/company_links/columns/updated_at/alterations/alt0000000930




ALTER TABLE agent_db_app_public.company_links 
    ALTER COLUMN updated_at DROP DEFAULT;



