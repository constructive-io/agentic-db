-- Revert: schemas/agent_db_app_public/tables/agents/columns/updated_at/alterations/alt0000004305




ALTER TABLE "agent_db_app_public".agents 
    ALTER COLUMN updated_at DROP DEFAULT;



