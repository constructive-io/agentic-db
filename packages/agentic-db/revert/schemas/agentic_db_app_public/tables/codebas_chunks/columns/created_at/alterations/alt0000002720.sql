-- Revert: schemas/agentic_db_app_public/tables/codebas_chunks/columns/created_at/alterations/alt0000002720




ALTER TABLE agentic_db_app_public.codebas_chunks 
    ALTER COLUMN created_at DROP DEFAULT;



