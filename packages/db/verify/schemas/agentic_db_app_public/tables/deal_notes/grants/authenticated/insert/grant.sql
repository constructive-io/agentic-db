-- Verify: schemas/agentic_db_app_public/tables/deal_notes/grants/authenticated/insert/grant


SELECT verify_table_grant('agentic_db_app_public.deal_notes', 'insert', 'authenticated');


