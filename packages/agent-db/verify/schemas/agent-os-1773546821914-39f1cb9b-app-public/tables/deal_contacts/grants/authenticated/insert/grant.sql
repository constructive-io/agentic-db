-- Verify: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/deal_contacts/grants/authenticated/insert/grant


SELECT verify_table_grant('agent-os-1773546821914-39f1cb9b-app-public.deal_contacts', 'insert', 'authenticated');


