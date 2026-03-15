-- Revert: schemas/agent_db_app_public/tables/tasks/columns/status/alterations/alt0000001018




ALTER TABLE agent_db_app_public.tasks 
    ALTER COLUMN status DROP DEFAULT;



