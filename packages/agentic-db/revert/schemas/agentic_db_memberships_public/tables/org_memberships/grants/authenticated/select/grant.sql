-- Revert: schemas/agentic_db_memberships_public/tables/org_memberships/grants/authenticated/select/grant


REVOKE SELECT ON agentic_db_memberships_public.org_memberships FROM authenticated;


