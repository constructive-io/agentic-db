-- Revert: schemas/agent_db_app_public/tables/workflow_steps/columns/created_at/alterations/alt0000002072




ALTER TABLE "agent_db_app_public".workflow_steps 
    ALTER COLUMN created_at DROP DEFAULT;



