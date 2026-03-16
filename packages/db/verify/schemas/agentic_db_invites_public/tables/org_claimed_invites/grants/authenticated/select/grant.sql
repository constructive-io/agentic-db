-- Verify: schemas/agentic_db_invites_public/tables/org_claimed_invites/grants/authenticated/select/grant


SELECT verify_table_grant('agentic_db_invites_public.org_claimed_invites', 'select', 'authenticated');


