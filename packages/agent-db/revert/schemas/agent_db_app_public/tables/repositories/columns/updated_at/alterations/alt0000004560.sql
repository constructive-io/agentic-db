-- Revert: schemas/agent_db_app_public/tables/repositories/columns/updated_at/alterations/alt0000004560




ALTER TABLE "agent_db_app_public".repositories 
    ALTER COLUMN updated_at DROP DEFAULT;



