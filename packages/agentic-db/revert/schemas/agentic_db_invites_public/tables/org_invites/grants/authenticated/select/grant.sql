-- Revert: schemas/agentic_db_invites_public/tables/org_invites/grants/authenticated/select/grant


REVOKE SELECT ON agentic_db_invites_public.org_invites FROM authenticated;


