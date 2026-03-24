-- Revert: schemas/agentic_db_memberships_public/tables/app_memberships/grants/authenticated/select/grant


REVOKE SELECT ON agentic_db_memberships_public.app_memberships FROM authenticated;


