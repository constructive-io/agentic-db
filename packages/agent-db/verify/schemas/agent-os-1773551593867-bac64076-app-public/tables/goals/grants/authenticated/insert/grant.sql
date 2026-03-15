-- Verify: schemas/agent-os-1773551593867-bac64076-app-public/tables/goals/grants/authenticated/insert/grant


SELECT verify_table_grant('agent-os-1773551593867-bac64076-app-public.goals', 'insert', 'authenticated');


