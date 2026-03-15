-- Verify: schemas/agent_db_app_public/tables/contacts/grants/authenticated/delete/grant


SELECT verify_table_grant('agent_db_app_public.contacts', 'delete', 'authenticated');


