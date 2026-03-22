-- Verify: schemas/agentic_db_memberships_public/tables/app_membership_defaults/grants/authenticated/update/grant


SELECT verify_table_grant('agentic_db_memberships_public.app_membership_defaults', 'update', 'authenticated');


