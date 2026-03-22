-- Revert: schemas/agentic_db_app_public/tables/runtime_schedules/columns/timezone/alterations/alt0000006028




ALTER TABLE agentic_db_app_public.runtime_schedules 
    ALTER COLUMN timezone DROP DEFAULT;



