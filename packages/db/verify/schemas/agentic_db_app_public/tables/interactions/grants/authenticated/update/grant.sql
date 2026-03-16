-- Verify: schemas/agentic_db_app_public/tables/interactions/grants/authenticated/update/grant


SELECT verify_table_grant('agentic_db_app_public.interactions', 'update', 'authenticated');


