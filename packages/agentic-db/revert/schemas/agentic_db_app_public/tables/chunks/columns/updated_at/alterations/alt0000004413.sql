-- Revert: schemas/agentic_db_app_public/tables/chunks/columns/updated_at/alterations/alt0000004413




ALTER TABLE agentic_db_app_public.chunks 
    ALTER COLUMN updated_at DROP DEFAULT;



