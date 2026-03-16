-- Verify: schemas/agentic_db_app_public/tables/webhooks/grants/authenticated/delete/grant


SELECT verify_table_grant('agentic_db_app_public.webhooks', 'delete', 'authenticated');


