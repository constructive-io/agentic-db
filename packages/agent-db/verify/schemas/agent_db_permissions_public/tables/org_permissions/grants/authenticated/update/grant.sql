-- Verify: schemas/agent_db_permissions_public/tables/org_permissions/grants/authenticated/update/grant


SELECT verify_table_grant('agent_db_permissions_public.org_permissions', 'update', 'authenticated');


