-- Verify: schemas/agent-os-1773550873753-b6c4a3e1-profiles-public/tables/org_profile_permissions/grants/authenticated/update/grant


SELECT verify_table_grant('agent-os-1773550873753-b6c4a3e1-profiles-public.org_profile_permissions', 'update', 'authenticated');


