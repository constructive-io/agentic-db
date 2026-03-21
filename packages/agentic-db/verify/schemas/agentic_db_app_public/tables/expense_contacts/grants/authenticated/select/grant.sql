-- Verify: schemas/agentic_db_app_public/tables/expense_contacts/grants/authenticated/select/grant


SELECT verify_table_grant('agentic_db_app_public.expense_contacts', 'select', 'authenticated');


