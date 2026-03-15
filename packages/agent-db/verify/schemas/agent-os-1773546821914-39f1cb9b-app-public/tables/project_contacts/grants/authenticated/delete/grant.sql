-- Verify: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/project_contacts/grants/authenticated/delete/grant


SELECT verify_table_grant('agent-os-1773546821914-39f1cb9b-app-public.project_contacts', 'delete', 'authenticated');


