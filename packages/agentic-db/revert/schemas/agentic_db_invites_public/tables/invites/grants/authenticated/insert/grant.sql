-- Revert: schemas/agentic_db_invites_public/tables/invites/grants/authenticated/insert/grant


REVOKE INSERT (email, expires_at, multiple, invite_limit) ON agentic_db_invites_public.invites FROM authenticated;


