-- Verify: schemas/agentic_db_permissions_public/tables/org_permissions/policies/auth_del/policy


SELECT verify_policy('auth_del', 'agentic_db_permissions_public.org_permissions');


