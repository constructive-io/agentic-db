-- Verify: schemas/agentic_db_invites_public/tables/invites/grants/authenticated/delete/grant


SELECT verify_table_grant('agentic_db_invites_public.invites', 'delete', 'authenticated');


