-- Verify: schemas/agentic_db_app_public/tables/deal_chunks/grants/authenticated/select/grant


SELECT verify_table_grant('agentic_db_app_public.deal_chunks', 'select', 'authenticated');


