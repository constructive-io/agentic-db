-- Verify: schemas/agent_db_limits_public/tables/org_limit_defaults/grants/authenticated/delete/grant


SELECT verify_table_grant('agent_db_limits_public.org_limit_defaults', 'delete', 'authenticated');


