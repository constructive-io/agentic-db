-- Verify: schemas/agent_db_memberships_public/tables/app_owner_grants/grants/authenticated/insert/grant


SELECT verify_table_grant('agent_db_memberships_public.app_owner_grants', 'insert', 'authenticated');


