-- Verify: schemas/agent_db_memberships_public/tables/app_membership_defaults/grants/authenticated/delete/grant


SELECT verify_table_grant('agent_db_memberships_public.app_membership_defaults', 'delete', 'authenticated');


