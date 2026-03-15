-- Verify: schemas/agent_db_app_public/tables/deal_contacts/grants/authenticated/insert/grant


SELECT verify_table_grant('agent_db_app_public.deal_contacts', 'insert', 'authenticated');


