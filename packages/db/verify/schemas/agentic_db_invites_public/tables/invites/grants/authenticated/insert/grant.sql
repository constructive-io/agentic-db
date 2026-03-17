-- Verify: schemas/agentic_db_invites_public/tables/invites/grants/authenticated/insert/grant


SELECT verify_table_grant('agentic_db_invites_public.invites', 'insert', 'authenticated');


