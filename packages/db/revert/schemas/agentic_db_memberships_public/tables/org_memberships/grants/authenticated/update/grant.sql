-- Revert: schemas/agentic_db_memberships_public/tables/org_memberships/grants/authenticated/update/grant


REVOKE UPDATE (is_banned, is_approved, is_disabled, granted) ON "agentic_db_memberships_public".org_memberships FROM authenticated;


