-- Verify: schemas/agentic_db_app_public/tables/runtime_schedules/grants/authenticated/update/grant


SELECT verify_table_grant('agentic_db_app_public.runtime_schedules', 'update', 'authenticated');


