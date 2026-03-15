-- Verify: schemas/agent-os-1773547105079-c748b4c3-profiles-public/tables/org_profile_permissions/grants/authenticated/delete/grant


SELECT verify_table_grant('agent-os-1773547105079-c748b4c3-profiles-public.org_profile_permissions', 'delete', 'authenticated');


