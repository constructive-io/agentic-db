-- Verify: schemas/agentic_db_permissions_public/tables/app_permissions/policies/auth_upd/policy


SELECT verify_policy('auth_upd', 'agentic_db_permissions_public.app_permissions');


