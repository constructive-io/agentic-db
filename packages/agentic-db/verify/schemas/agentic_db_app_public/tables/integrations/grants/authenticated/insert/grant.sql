-- Verify: schemas/agentic_db_app_public/tables/integrations/grants/authenticated/insert/grant


SELECT verify_table_grant('agentic_db_app_public.integrations', 'insert', 'authenticated');


