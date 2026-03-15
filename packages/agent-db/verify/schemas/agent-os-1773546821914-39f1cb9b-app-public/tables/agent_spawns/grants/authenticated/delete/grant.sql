-- Verify: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/agent_spawns/grants/authenticated/delete/grant


SELECT verify_table_grant('agent-os-1773546821914-39f1cb9b-app-public.agent_spawns', 'delete', 'authenticated');


