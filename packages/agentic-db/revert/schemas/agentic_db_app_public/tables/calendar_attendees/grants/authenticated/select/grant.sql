-- Revert: schemas/agentic_db_app_public/tables/calendar_attendees/grants/authenticated/select/grant


REVOKE SELECT ON agentic_db_app_public.calendar_attendees FROM authenticated;


