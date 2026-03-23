-- Revert: schemas/agentic_db_app_public/tables/runtime_schedules/columns/created_at/alterations/alt0000003077




ALTER TABLE agentic_db_app_public.runtime_schedules 
    ALTER COLUMN created_at DROP DEFAULT;



