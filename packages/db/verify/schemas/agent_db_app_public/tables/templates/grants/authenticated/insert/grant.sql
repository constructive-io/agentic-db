-- Verify: schemas/agent_db_app_public/tables/templates/grants/authenticated/insert/grant


SELECT verify_table_grant('agent_db_app_public.templates', 'insert', 'authenticated');


