-- Verify: schemas/agentic_db_app_public/tables/touchpoints_chunks/grants/authenticated/select/grant


SELECT verify_table_grant('agentic_db_app_public.touchpoints_chunks', 'select', 'authenticated');


