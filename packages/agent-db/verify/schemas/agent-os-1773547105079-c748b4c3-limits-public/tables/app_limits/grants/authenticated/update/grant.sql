-- Verify: schemas/agent-os-1773547105079-c748b4c3-limits-public/tables/app_limits/grants/authenticated/update/grant


SELECT verify_table_grant('agent-os-1773547105079-c748b4c3-limits-public.app_limits', 'update', 'authenticated');


