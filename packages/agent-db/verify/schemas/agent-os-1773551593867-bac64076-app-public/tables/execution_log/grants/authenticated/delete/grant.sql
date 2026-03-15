-- Verify: schemas/agent-os-1773551593867-bac64076-app-public/tables/execution_log/grants/authenticated/delete/grant


SELECT verify_table_grant('agent-os-1773551593867-bac64076-app-public.execution_log', 'delete', 'authenticated');


