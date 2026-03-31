-- Revert: schemas/agentic_db_app_public/tables/calendar_event_tasks/grants/authenticated/select/grant


REVOKE SELECT ON agentic_db_app_public.calendar_event_tasks FROM authenticated;


