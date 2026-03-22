-- Revert: schemas/agentic_db_app_public/tables/trip_places/grants/authenticated/insert/grant


REVOKE INSERT ON agentic_db_app_public.trip_places FROM authenticated;


