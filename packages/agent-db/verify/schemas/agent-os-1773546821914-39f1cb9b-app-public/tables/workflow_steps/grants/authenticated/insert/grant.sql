-- Verify: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/workflow_steps/grants/authenticated/insert/grant


SELECT verify_table_grant('agent-os-1773546821914-39f1cb9b-app-public.workflow_steps', 'insert', 'authenticated');


