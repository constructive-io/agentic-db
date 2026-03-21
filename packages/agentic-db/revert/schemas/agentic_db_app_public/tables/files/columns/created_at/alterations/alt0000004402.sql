-- Revert: schemas/agentic_db_app_public/tables/files/columns/created_at/alterations/alt0000004402




ALTER TABLE agentic_db_app_public.files 
    ALTER COLUMN created_at DROP DEFAULT;



