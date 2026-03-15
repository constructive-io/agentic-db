-- Revert: schemas/agent_db_permissions_public/tables/org_permissions/grants/authenticated/insert/grant


REVOKE INSERT ON agent_db_permissions_public.org_permissions FROM authenticated;


