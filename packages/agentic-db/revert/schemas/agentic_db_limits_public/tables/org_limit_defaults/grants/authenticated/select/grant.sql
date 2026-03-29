-- Revert: schemas/agentic_db_limits_public/tables/org_limit_defaults/grants/authenticated/select/grant


REVOKE SELECT ON agentic_db_limits_public.org_limit_defaults FROM authenticated;


