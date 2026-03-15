-- Verify: schemas/agent-os-1773547105079-c748b4c3-limits-public/tables/org_limit_defaults/grants/authenticated/delete/grant


SELECT verify_table_grant('agent-os-1773547105079-c748b4c3-limits-public.org_limit_defaults', 'delete', 'authenticated');


