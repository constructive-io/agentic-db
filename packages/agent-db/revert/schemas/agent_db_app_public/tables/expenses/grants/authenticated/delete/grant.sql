-- Revert: schemas/agent_db_app_public/tables/expenses/grants/authenticated/delete/grant


REVOKE DELETE ON agent_db_app_public.expenses FROM authenticated;


