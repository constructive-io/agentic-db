-- Verify: schemas/agent-os-1773551593867-bac64076-app-public/tables/habit_logs/grants/authenticated/update/grant


SELECT verify_table_grant('agent-os-1773551593867-bac64076-app-public.habit_logs', 'update', 'authenticated');


