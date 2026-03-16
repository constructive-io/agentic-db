-- Verify: schemas/agentic_db_app_public/tables/interactions/grants/authenticated/insert/grant


SELECT verify_table_grant('agentic_db_app_public.interactions', 'insert', 'authenticated');


