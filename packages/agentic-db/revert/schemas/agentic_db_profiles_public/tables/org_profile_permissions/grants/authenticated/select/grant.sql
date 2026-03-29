-- Revert: schemas/agentic_db_profiles_public/tables/org_profile_permissions/grants/authenticated/select/grant


REVOKE SELECT ON agentic_db_profiles_public.org_profile_permissions FROM authenticated;


