-- Revert: schemas/agentic_db_invites_public/tables/app_invites/grants/authenticated/insert/grant


REVOKE INSERT (email, expires_at, multiple, invite_limit) ON agentic_db_invites_public.app_invites FROM authenticated;


