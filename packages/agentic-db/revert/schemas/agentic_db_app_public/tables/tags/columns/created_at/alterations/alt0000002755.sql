-- Revert: schemas/agentic_db_app_public/tables/tags/columns/created_at/alterations/alt0000002755




ALTER TABLE agentic_db_app_public.tags 
    ALTER COLUMN created_at DROP DEFAULT;



