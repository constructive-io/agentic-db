-- Revert: schemas/agent_db_invites_public/tables/invites/grants/authenticated/update/grant


REVOKE UPDATE ON agent_db_invites_public.invites FROM authenticated;


