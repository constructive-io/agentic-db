-- Revert: schemas/agent_db_memberships_public/tables/org_memberships/grants/authenticated/delete/grant


REVOKE DELETE ON "agent_db_memberships_public".org_memberships FROM authenticated;


