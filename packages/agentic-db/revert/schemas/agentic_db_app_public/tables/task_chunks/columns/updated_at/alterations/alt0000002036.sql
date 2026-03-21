-- Revert: schemas/agentic_db_app_public/tables/task_chunks/columns/updated_at/alterations/alt0000002036




ALTER TABLE "agentic_db_app_public".task_chunks 
    ALTER COLUMN updated_at DROP DEFAULT;



