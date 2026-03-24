-- Revert: schemas/agentic_db_app_public/tables/venues/grants/authenticated/insert/grant


REVOKE INSERT ON agentic_db_app_public.venues FROM authenticated;


