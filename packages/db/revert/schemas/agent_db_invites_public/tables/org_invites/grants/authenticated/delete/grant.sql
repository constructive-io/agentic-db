-- Revert: schemas/agent_db_invites_public/tables/org_invites/grants/authenticated/delete/grant


REVOKE DELETE ON "agent_db_invites_public".org_invites FROM authenticated;


