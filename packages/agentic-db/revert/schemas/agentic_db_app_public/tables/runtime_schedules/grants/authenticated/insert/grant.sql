-- Revert: schemas/agentic_db_app_public/tables/runtime_schedules/grants/authenticated/insert/grant


REVOKE INSERT ON agentic_db_app_public.runtime_schedules FROM authenticated;


