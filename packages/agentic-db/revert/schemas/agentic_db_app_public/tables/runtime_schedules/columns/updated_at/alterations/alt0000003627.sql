-- Revert: schemas/agentic_db_app_public/tables/runtime_schedules/columns/updated_at/alterations/alt0000003627




ALTER TABLE agentic_db_app_public.runtime_schedules 
    ALTER COLUMN updated_at DROP DEFAULT;



