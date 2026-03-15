-- Revert: schemas/agent_db_memberships_public/tables/org_membership_defaults/grants/authenticated/select/grant


REVOKE SELECT ON agent_db_memberships_public.org_membership_defaults FROM authenticated;


