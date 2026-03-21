-- Revert: schemas/agentic_db_app_public/tables/recipes/columns/updated_at/alterations/alt0000002653




ALTER TABLE "agentic_db_app_public".recipes 
    ALTER COLUMN updated_at DROP DEFAULT;



