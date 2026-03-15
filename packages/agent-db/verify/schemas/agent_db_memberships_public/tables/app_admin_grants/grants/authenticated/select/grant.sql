-- Verify: schemas/agent_db_memberships_public/tables/app_admin_grants/grants/authenticated/select/grant


SELECT verify_table_grant('agent_db_memberships_public.app_admin_grants', 'select', 'authenticated');


