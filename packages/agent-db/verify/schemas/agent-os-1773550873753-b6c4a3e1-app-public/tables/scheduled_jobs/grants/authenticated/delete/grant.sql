-- Verify: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/scheduled_jobs/grants/authenticated/delete/grant


SELECT verify_table_grant('agent-os-1773550873753-b6c4a3e1-app-public.scheduled_jobs', 'delete', 'authenticated');


