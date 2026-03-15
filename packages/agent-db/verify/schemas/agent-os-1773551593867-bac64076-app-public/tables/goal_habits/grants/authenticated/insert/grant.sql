-- Verify: schemas/agent-os-1773551593867-bac64076-app-public/tables/goal_habits/grants/authenticated/insert/grant


SELECT verify_table_grant('agent-os-1773551593867-bac64076-app-public.goal_habits', 'insert', 'authenticated');


