-- Verify: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/execution_log/grants/authenticated/insert/grant


SELECT verify_table_grant('agent-os-1773547105079-c748b4c3-app-public.execution_log', 'insert', 'authenticated');


