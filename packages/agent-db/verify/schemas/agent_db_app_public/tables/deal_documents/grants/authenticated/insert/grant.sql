-- Verify: schemas/agent_db_app_public/tables/deal_documents/grants/authenticated/insert/grant


SELECT verify_table_grant('agent_db_app_public.deal_documents', 'insert', 'authenticated');


