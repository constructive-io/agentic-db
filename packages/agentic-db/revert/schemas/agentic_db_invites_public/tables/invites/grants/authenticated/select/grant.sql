-- Revert: schemas/agentic_db_invites_public/tables/invites/grants/authenticated/select/grant


REVOKE SELECT ON agentic_db_invites_public.invites FROM authenticated;


