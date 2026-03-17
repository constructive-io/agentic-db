-- Revert: schemas/agentic_db_invites_public/tables/org_claimed_invites/grants/authenticated/select/grant


REVOKE SELECT ON "agentic_db_invites_public".org_claimed_invites FROM authenticated;


