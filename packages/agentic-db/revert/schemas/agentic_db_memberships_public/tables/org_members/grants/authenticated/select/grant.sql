-- Revert: schemas/agentic_db_memberships_public/tables/org_members/grants/authenticated/select/grant


REVOKE SELECT ON "agentic_db_memberships_public".org_members FROM authenticated;


