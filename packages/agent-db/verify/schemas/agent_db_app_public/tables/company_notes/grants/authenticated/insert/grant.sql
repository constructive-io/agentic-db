-- Verify: schemas/agent_db_app_public/tables/company_notes/grants/authenticated/insert/grant


SELECT verify_table_grant('agent_db_app_public.company_notes', 'insert', 'authenticated');


