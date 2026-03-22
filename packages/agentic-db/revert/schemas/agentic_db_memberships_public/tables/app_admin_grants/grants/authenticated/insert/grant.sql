-- Revert: schemas/agentic_db_memberships_public/tables/app_admin_grants/grants/authenticated/insert/grant


REVOKE INSERT ON agentic_db_memberships_public.app_admin_grants FROM authenticated;


