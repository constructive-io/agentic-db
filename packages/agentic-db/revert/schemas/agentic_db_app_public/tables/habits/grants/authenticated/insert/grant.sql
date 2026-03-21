-- Revert: schemas/agentic_db_app_public/tables/habits/grants/authenticated/insert/grant


REVOKE INSERT ON agentic_db_app_public.habits FROM authenticated;


