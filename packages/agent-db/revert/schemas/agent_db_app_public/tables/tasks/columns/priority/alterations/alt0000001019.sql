-- Revert: schemas/agent_db_app_public/tables/tasks/columns/priority/alterations/alt0000001019




ALTER TABLE agent_db_app_public.tasks 
    ALTER COLUMN priority DROP DEFAULT;



