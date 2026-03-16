-- Revert: schemas/agent_db_app_public/tables/prompts/columns/updated_at/alterations/alt0000001946




ALTER TABLE "agent_db_app_public".prompts 
    ALTER COLUMN updated_at DROP DEFAULT;



