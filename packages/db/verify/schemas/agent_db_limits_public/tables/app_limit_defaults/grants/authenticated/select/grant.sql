-- Verify: schemas/agent_db_limits_public/tables/app_limit_defaults/grants/authenticated/select/grant


SELECT verify_table_grant('agent_db_limits_public.app_limit_defaults', 'select', 'authenticated');


