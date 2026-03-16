-- Verify: schemas/agent_db_app_public/tables/contacts/grants/authenticated/insert/grant


SELECT verify_table_grant('agent_db_app_public.contacts', 'insert', 'authenticated');


