-- Verify: schemas/agentic_db_app_public/tables/emails/grants/authenticated/insert/grant


SELECT verify_table_grant('agentic_db_app_public.emails', 'insert', 'authenticated');


