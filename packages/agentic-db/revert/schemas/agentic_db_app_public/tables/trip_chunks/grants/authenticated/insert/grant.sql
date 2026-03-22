-- Revert: schemas/agentic_db_app_public/tables/trip_chunks/grants/authenticated/insert/grant


REVOKE INSERT ON agentic_db_app_public.trip_chunks FROM authenticated;


