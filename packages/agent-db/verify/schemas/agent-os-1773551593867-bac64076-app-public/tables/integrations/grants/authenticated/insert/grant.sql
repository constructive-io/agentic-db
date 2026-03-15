-- Verify: schemas/agent-os-1773551593867-bac64076-app-public/tables/integrations/grants/authenticated/insert/grant


SELECT verify_table_grant('agent-os-1773551593867-bac64076-app-public.integrations', 'insert', 'authenticated');


