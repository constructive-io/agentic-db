-- Revert: schemas/agent_db_invites_public/tables/invites/grants/authenticated/delete/grant


REVOKE DELETE ON agent_db_invites_public.invites FROM authenticated;


