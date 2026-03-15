-- Revert: schemas/agent_db_app_public/tables/integrations/grants/authenticated/select/grant


REVOKE SELECT ON agent_db_app_public.integrations FROM authenticated;


