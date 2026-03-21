-- Revert: schemas/agentic_db_memberships_public/tables/app_memberships/grants/authenticated/update/grant


REVOKE UPDATE (is_banned, is_approved, is_verified, is_disabled, granted) ON agentic_db_memberships_public.app_memberships FROM authenticated;


