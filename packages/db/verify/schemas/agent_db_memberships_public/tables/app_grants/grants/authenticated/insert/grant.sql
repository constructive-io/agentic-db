-- Verify: schemas/agent_db_memberships_public/tables/app_grants/grants/authenticated/insert/grant


SELECT verify_table_grant('agent_db_memberships_public.app_grants', 'insert', 'authenticated');


