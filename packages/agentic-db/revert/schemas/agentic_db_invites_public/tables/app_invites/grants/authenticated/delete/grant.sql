-- Revert: schemas/agentic_db_invites_public/tables/app_invites/grants/authenticated/delete/grant


REVOKE DELETE ON agentic_db_invites_public.app_invites FROM authenticated;


