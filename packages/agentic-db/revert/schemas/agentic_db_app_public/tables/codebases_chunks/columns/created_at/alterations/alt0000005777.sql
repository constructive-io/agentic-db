-- Revert: schemas/agentic_db_app_public/tables/codebases_chunks/columns/created_at/alterations/alt0000005777




ALTER TABLE agentic_db_app_public.codebases_chunks 
    ALTER COLUMN created_at DROP DEFAULT;



