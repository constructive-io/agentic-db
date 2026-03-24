-- Revert: schemas/agentic_db_profiles_public/tables/app_profile_permissions/grants/authenticated/delete/grant


REVOKE DELETE ON agentic_db_profiles_public.app_profile_permissions FROM authenticated;


