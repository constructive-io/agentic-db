-- Revert: schemas/agentic_db_app_public/tables/tasks/columns/status/alterations/alt0000003957




ALTER TABLE agentic_db_app_public.tasks 
    ALTER COLUMN status DROP DEFAULT;



