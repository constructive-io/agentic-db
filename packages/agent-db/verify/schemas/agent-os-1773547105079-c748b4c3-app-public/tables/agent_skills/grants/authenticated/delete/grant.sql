-- Verify: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/agent_skills/grants/authenticated/delete/grant


SELECT verify_table_grant('agent-os-1773547105079-c748b4c3-app-public.agent_skills', 'delete', 'authenticated');


