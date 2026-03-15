-- Revert: schemas/agent_db_app_public/tables/integrations/grants/authenticated/insert/grant


REVOKE INSERT ON agent_db_app_public.integrations FROM authenticated;


