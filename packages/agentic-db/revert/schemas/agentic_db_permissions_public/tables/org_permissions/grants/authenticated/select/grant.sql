-- Revert: schemas/agentic_db_permissions_public/tables/org_permissions/grants/authenticated/select/grant


REVOKE SELECT ON agentic_db_permissions_public.org_permissions FROM authenticated;


