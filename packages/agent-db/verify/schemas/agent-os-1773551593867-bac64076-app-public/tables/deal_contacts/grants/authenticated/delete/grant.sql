-- Verify: schemas/agent-os-1773551593867-bac64076-app-public/tables/deal_contacts/grants/authenticated/delete/grant


SELECT verify_table_grant('agent-os-1773551593867-bac64076-app-public.deal_contacts', 'delete', 'authenticated');


