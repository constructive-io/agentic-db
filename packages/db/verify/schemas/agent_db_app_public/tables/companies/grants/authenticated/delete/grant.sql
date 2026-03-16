-- Verify: schemas/agent_db_app_public/tables/companies/grants/authenticated/delete/grant


SELECT verify_table_grant('agent_db_app_public.companies', 'delete', 'authenticated');


