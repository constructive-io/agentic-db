-- Revert: schemas/agentic_db_app_public/tables/memory_chunks/columns/created_at/alterations/alt0000002024




ALTER TABLE "agentic_db_app_public".memory_chunks 
    ALTER COLUMN created_at DROP DEFAULT;



