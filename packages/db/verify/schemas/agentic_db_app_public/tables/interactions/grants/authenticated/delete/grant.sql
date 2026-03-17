-- Verify: schemas/agentic_db_app_public/tables/interactions/grants/authenticated/delete/grant


SELECT verify_table_grant('agentic_db_app_public.interactions', 'delete', 'authenticated');


