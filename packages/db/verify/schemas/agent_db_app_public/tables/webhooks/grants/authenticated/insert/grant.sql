-- Verify: schemas/agent_db_app_public/tables/webhooks/grants/authenticated/insert/grant


SELECT verify_table_grant('agent_db_app_public.webhooks', 'insert', 'authenticated');


