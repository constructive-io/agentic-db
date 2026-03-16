-- Verify: schemas/agent_db_app_public/tables/expense_contacts/grants/authenticated/delete/grant


SELECT verify_table_grant('agent_db_app_public.expense_contacts', 'delete', 'authenticated');


