-- Revert: schemas/agentic_db_app_public/tables/hiking_trails/grants/authenticated/insert/grant


REVOKE INSERT ON agentic_db_app_public.hiking_trails FROM authenticated;


