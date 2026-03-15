-- Revert: schemas/agent_db_app_public/tables/deals/grants/authenticated/select/grant


REVOKE SELECT ON agent_db_app_public.deals FROM authenticated;


