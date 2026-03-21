-- Revert: schemas/agentic_db_limits_public/tables/app_limits/grants/authenticated/insert/grant


REVOKE INSERT ON agentic_db_limits_public.app_limits FROM authenticated;


