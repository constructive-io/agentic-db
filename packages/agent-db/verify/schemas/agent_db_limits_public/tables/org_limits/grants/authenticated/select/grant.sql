-- Verify: schemas/agent_db_limits_public/tables/org_limits/grants/authenticated/select/grant


SELECT verify_table_grant('agent_db_limits_public.org_limits', 'select', 'authenticated');


