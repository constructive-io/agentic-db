-- Revert: schemas/agent_db_app_public/tables/repositories/columns/created_at/alterations/alt0000002158




ALTER TABLE "agent_db_app_public".repositories 
    ALTER COLUMN created_at DROP DEFAULT;



