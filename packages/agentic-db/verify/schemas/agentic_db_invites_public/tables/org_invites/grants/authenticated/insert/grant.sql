-- Verify: schemas/agentic_db_invites_public/tables/org_invites/grants/authenticated/insert/grant


SELECT verify_table_grant('agentic_db_invites_public.org_invites', 'insert', 'authenticated');


