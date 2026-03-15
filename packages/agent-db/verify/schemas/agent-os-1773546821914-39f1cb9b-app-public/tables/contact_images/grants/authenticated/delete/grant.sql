-- Verify: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/contact_images/grants/authenticated/delete/grant


SELECT verify_table_grant('agent-os-1773546821914-39f1cb9b-app-public.contact_images', 'delete', 'authenticated');


