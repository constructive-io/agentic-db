-- Revert: schemas/agentic_db_app_public/tables/tags/columns/updated_at/alterations/alt0000010562




ALTER TABLE agentic_db_app_public.tags 
    ALTER COLUMN updated_at DROP DEFAULT;



