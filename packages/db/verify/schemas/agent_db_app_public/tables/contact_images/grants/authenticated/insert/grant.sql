-- Verify: schemas/agent_db_app_public/tables/contact_images/grants/authenticated/insert/grant


SELECT verify_table_grant('agent_db_app_public.contact_images', 'insert', 'authenticated');


