-- Verify: schemas/agentic_db_app_public/tables/deals_chunks/grants/authenticated/select/grant


SELECT verify_table_grant('agentic_db_app_public.deals_chunks', 'select', 'authenticated');


