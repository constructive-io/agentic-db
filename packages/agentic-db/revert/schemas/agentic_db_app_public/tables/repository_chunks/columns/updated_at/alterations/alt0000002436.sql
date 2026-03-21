-- Revert: schemas/agentic_db_app_public/tables/repository_chunks/columns/updated_at/alterations/alt0000002436




ALTER TABLE "agentic_db_app_public".repository_chunks 
    ALTER COLUMN updated_at DROP DEFAULT;



