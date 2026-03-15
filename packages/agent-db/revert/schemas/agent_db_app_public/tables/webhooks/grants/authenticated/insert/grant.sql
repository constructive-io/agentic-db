-- Revert: schemas/agent_db_app_public/tables/webhooks/grants/authenticated/insert/grant


REVOKE INSERT ON agent_db_app_public.webhooks FROM authenticated;


