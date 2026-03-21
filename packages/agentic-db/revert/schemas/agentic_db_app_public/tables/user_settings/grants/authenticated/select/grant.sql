-- Revert: schemas/agentic_db_app_public/tables/user_settings/grants/authenticated/select/grant


REVOKE SELECT ON agentic_db_app_public.user_settings FROM authenticated;


