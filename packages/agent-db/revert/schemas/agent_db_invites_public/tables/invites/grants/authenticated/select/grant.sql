-- Revert: schemas/agent_db_invites_public/tables/invites/grants/authenticated/select/grant


REVOKE SELECT ON "agent_db_invites_public".invites FROM authenticated;


