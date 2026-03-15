-- Revert: schemas/agent_db_app_public/tables/prompts/columns/version/alterations/alt0000004324




ALTER TABLE "agent_db_app_public".prompts 
    ALTER COLUMN version DROP DEFAULT;



