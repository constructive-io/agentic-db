-- Revert: schemas/agent_db_app_public/tables/expense_contacts/grants/authenticated/insert/grant


REVOKE INSERT ON agent_db_app_public.expense_contacts FROM authenticated;


