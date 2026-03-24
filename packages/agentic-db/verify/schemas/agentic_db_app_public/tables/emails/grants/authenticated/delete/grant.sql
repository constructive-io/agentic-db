-- Verify: schemas/agentic_db_app_public/tables/emails/grants/authenticated/delete/grant


SELECT verify_table_grant('agentic_db_app_public.emails', 'delete', 'authenticated');


