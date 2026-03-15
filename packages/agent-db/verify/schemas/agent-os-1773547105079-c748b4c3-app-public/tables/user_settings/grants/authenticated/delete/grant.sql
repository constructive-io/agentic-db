-- Verify: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/user_settings/grants/authenticated/delete/grant


SELECT verify_table_grant('agent-os-1773547105079-c748b4c3-app-public.user_settings', 'delete', 'authenticated');


