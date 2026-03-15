-- Verify: schemas/agent_db_app_public/tables/contact_links/grants/authenticated/update/grant


SELECT verify_table_grant('agent_db_app_public.contact_links', 'update', 'authenticated');


