-- Verify: schemas/agent_db_limits_public/tables/org_limits/grants/authenticated/delete/grant


SELECT verify_table_grant('agent_db_limits_public.org_limits', 'delete', 'authenticated');


