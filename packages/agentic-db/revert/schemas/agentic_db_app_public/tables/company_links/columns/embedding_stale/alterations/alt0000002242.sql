-- Revert: schemas/agentic_db_app_public/tables/company_links/columns/embedding_stale/alterations/alt0000002242




ALTER TABLE agentic_db_app_public.company_links 
    ALTER COLUMN embedding_stale DROP DEFAULT;



