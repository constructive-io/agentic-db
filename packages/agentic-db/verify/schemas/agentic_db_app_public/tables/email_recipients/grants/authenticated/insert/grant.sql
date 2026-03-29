-- Verify: schemas/agentic_db_app_public/tables/email_recipients/grants/authenticated/insert/grant


SELECT verify_table_grant('agentic_db_app_public.email_recipients', 'insert', 'authenticated');


