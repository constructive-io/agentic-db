-- Verify: schemas/agent_db_memberships_public/tables/app_membership_defaults/grants/authenticated/insert/grant


SELECT verify_table_grant('agent_db_memberships_public.app_membership_defaults', 'insert', 'authenticated');


