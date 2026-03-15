-- Revert: schemas/agent_db_app_public/tables/prompts/columns/is_active/alterations/alt0000004325




ALTER TABLE "agent_db_app_public".prompts 
    ALTER COLUMN is_active DROP DEFAULT;



