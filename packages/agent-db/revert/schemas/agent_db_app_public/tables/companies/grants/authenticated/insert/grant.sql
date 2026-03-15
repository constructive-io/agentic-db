-- Revert: schemas/agent_db_app_public/tables/companies/grants/authenticated/insert/grant


REVOKE INSERT ON agent_db_app_public.companies FROM authenticated;


