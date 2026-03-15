-- Verify: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/workflow_steps/grants/authenticated/update/grant


SELECT verify_table_grant('agent-os-1773547105079-c748b4c3-app-public.workflow_steps', 'update', 'authenticated');


