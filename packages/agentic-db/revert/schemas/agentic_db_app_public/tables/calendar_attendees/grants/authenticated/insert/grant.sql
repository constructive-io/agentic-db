-- Revert: schemas/agentic_db_app_public/tables/calendar_attendees/grants/authenticated/insert/grant


REVOKE INSERT ON agentic_db_app_public.calendar_attendees FROM authenticated;


