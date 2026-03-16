-- Revert: schemas/agentic_db_limits_public/tables/app_limit_defaults/grants/authenticated/select/grant


REVOKE SELECT ON "agentic_db_limits_public".app_limit_defaults FROM authenticated;


