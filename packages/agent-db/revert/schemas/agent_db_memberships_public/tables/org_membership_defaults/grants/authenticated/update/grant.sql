-- Revert: schemas/agent_db_memberships_public/tables/org_membership_defaults/grants/authenticated/update/grant


REVOKE UPDATE ON agent_db_memberships_public.org_membership_defaults FROM authenticated;


