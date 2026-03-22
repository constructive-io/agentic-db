-- Revert: schemas/agentic_db_permissions_public/tables/app_permission_defaults/grants/authenticated/insert/grant


REVOKE INSERT ON agentic_db_permissions_public.app_permission_defaults FROM authenticated;


