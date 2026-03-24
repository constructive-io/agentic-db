-- Verify: schemas/agentic_db_app_public/tables/touchpoints/grants/authenticated/delete/grant


SELECT verify_table_grant('agentic_db_app_public.touchpoints', 'delete', 'authenticated');


