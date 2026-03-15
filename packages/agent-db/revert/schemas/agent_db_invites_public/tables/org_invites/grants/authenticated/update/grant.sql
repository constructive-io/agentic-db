-- Revert: schemas/agent_db_invites_public/tables/org_invites/grants/authenticated/update/grant


REVOKE UPDATE ON agent_db_invites_public.org_invites FROM authenticated;


