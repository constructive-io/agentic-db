-- Verify: schemas/agent-os-1773551593867-bac64076-app-public/tables/task_contacts/grants/authenticated/delete/grant


SELECT verify_table_grant('agent-os-1773551593867-bac64076-app-public.task_contacts', 'delete', 'authenticated');


