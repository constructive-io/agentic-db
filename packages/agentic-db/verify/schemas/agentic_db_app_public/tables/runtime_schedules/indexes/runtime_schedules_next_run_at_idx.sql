-- Verify: schemas/agentic_db_app_public/tables/runtime_schedules/indexes/runtime_schedules_next_run_at_idx


SELECT verify_index('agentic_db_app_public.runtime_schedules', 'runtime_schedules_next_run_at_idx');


