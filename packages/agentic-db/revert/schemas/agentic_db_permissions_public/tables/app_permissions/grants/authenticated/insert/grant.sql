-- Revert: schemas/agentic_db_permissions_public/tables/app_permissions/grants/authenticated/insert/grant


REVOKE INSERT ON agentic_db_permissions_public.app_permissions FROM authenticated;


