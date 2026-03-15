-- Revert: schemas/agent_db_profiles_public/tables/org_profiles/grants/authenticated/select/grant


REVOKE SELECT ON "agent_db_profiles_public".org_profiles FROM authenticated;


