-- Verify: schemas/agent_db_app_public/tables/company_documents/grants/authenticated/delete/grant


SELECT verify_table_grant('agent_db_app_public.company_documents', 'delete', 'authenticated');


