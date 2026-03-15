-- Revert: schemas/agent_db_invites_public/tables/org_claimed_invites/grants/authenticated/select/grant


REVOKE SELECT ON agent_db_invites_public.org_claimed_invites FROM authenticated;


