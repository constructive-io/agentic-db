-- Revert: schemas/agent_db_invites_public/tables/invites/grants/authenticated/insert/grant


REVOKE INSERT (email, expires_at, multiple, invite_limit) ON agent_db_invites_public.invites FROM authenticated;


