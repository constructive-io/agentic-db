-- Revert: schemas/agentic_db_invites_public/tables/app_claimed_invites/grants/authenticated/select/grant


REVOKE SELECT ON agentic_db_invites_public.app_claimed_invites FROM authenticated;


