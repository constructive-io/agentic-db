-- Verify: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/execution_log/grants/authenticated/insert/grant


SELECT verify_table_grant('agent-os-1773546821914-39f1cb9b-app-public.execution_log', 'insert', 'authenticated');


