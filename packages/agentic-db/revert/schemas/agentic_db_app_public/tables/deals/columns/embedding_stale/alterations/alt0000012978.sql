-- Revert: schemas/agentic_db_app_public/tables/deals/columns/embedding_stale/alterations/alt0000012978




ALTER TABLE agentic_db_app_public.deals 
    ALTER COLUMN embedding_stale DROP DEFAULT;



