-- Revert: schemas/agentic_db_memberships_public/tables/org_membership_defaults/grants/authenticated/insert/grant


REVOKE INSERT ON agentic_db_memberships_public.org_membership_defaults FROM authenticated;


