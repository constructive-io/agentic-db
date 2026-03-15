-- Verify: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/app_memberships/grants/authenticated/update/grant


SELECT verify_table_grant('agent-os-1773547105079-c748b4c3-memberships-public.app_memberships', 'update', 'authenticated');


