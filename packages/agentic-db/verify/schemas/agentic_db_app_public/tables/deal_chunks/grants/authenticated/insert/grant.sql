-- Verify: schemas/agentic_db_app_public/tables/deal_chunks/grants/authenticated/insert/grant


SELECT verify_table_grant('agentic_db_app_public.deal_chunks', 'insert', 'authenticated');


