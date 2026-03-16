-- Revert: schemas/agent_db_app_public/tables/milestones/columns/created_at/alterations/alt0000002142




ALTER TABLE "agent_db_app_public".milestones 
    ALTER COLUMN created_at DROP DEFAULT;



