-- Revert: schemas/agentic_db_app_public/tables/tags/columns/usage_count/alterations/alt0000005640




ALTER TABLE agentic_db_app_public.tags 
    ALTER COLUMN usage_count DROP DEFAULT;



