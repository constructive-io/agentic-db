-- Revert: schemas/agent_db_invites_public/tables/claimed_invites/grants/authenticated/select/grant


REVOKE SELECT ON "agent_db_invites_public".claimed_invites FROM authenticated;


