-- Verify: schemas/agent_db_app_public/tables/company_links/grants/authenticated/update/grant


SELECT verify_table_grant('agent_db_app_public.company_links', 'update', 'authenticated');


