-- Revert: schemas/agentic_db_invites_public/tables/claimed_invites/grants/authenticated/select/grant


REVOKE SELECT ON "agentic_db_invites_public".claimed_invites FROM authenticated;


