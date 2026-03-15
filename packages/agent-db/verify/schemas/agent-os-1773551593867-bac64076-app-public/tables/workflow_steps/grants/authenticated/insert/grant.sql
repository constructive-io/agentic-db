-- Verify: schemas/agent-os-1773551593867-bac64076-app-public/tables/workflow_steps/grants/authenticated/insert/grant


SELECT verify_table_grant('agent-os-1773551593867-bac64076-app-public.workflow_steps', 'insert', 'authenticated');


