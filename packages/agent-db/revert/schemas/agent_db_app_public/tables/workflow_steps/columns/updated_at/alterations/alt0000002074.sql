-- Revert: schemas/agent_db_app_public/tables/workflow_steps/columns/updated_at/alterations/alt0000002074




ALTER TABLE "agent_db_app_public".workflow_steps 
    ALTER COLUMN updated_at DROP DEFAULT;



