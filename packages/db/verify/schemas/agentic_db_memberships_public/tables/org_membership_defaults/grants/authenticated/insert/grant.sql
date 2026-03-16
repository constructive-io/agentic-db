-- Verify: schemas/agentic_db_memberships_public/tables/org_membership_defaults/grants/authenticated/insert/grant


SELECT verify_table_grant('agentic_db_memberships_public.org_membership_defaults', 'insert', 'authenticated');


