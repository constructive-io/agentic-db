-- Revert: schemas/agent_db_app_public/tables/deals/grants/authenticated/update/grant


REVOKE UPDATE ON agent_db_app_public.deals FROM authenticated;


