-- Revert: schemas/agent_db_app_public/tables/companies/grants/authenticated/delete/grant


REVOKE DELETE ON agent_db_app_public.companies FROM authenticated;


