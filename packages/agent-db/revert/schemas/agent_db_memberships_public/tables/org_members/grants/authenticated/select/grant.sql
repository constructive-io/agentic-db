-- Revert: schemas/agent_db_memberships_public/tables/org_members/grants/authenticated/select/grant


REVOKE SELECT ON agent_db_memberships_public.org_members FROM authenticated;


