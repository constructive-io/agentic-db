-- Revert: schemas/agent_db_app_public/tables/goals/columns/progress_pct/alterations/alt0000004265




ALTER TABLE "agent_db_app_public".goals 
    ALTER COLUMN progress_pct DROP DEFAULT;



