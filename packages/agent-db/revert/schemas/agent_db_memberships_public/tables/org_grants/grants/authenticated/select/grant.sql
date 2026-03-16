-- Revert: schemas/agent_db_memberships_public/tables/org_grants/grants/authenticated/select/grant


REVOKE SELECT ON "agent_db_memberships_public".org_grants FROM authenticated;


