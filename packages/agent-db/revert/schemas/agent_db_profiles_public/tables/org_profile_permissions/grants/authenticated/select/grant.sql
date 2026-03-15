-- Revert: schemas/agent_db_profiles_public/tables/org_profile_permissions/grants/authenticated/select/grant


REVOKE SELECT ON "agent_db_profiles_public".org_profile_permissions FROM authenticated;


