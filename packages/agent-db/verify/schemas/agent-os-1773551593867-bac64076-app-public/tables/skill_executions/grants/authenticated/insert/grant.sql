-- Verify: schemas/agent-os-1773551593867-bac64076-app-public/tables/skill_executions/grants/authenticated/insert/grant


SELECT verify_table_grant('agent-os-1773551593867-bac64076-app-public.skill_executions', 'insert', 'authenticated');


