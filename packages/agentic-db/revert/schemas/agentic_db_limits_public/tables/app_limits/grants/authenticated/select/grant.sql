-- Revert: schemas/agentic_db_limits_public/tables/app_limits/grants/authenticated/select/grant


REVOKE SELECT ON agentic_db_limits_public.app_limits FROM authenticated;


