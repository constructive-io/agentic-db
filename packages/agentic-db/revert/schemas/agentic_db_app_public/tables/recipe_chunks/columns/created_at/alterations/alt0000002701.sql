-- Revert: schemas/agentic_db_app_public/tables/recipe_chunks/columns/created_at/alterations/alt0000002701




ALTER TABLE "agentic_db_app_public".recipe_chunks 
    ALTER COLUMN created_at DROP DEFAULT;



