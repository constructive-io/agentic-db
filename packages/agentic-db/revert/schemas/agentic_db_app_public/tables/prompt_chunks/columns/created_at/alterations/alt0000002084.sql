-- Revert: schemas/agentic_db_app_public/tables/prompt_chunks/columns/created_at/alterations/alt0000002084




ALTER TABLE "agentic_db_app_public".prompt_chunks 
    ALTER COLUMN created_at DROP DEFAULT;



