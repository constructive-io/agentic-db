-- Revert: schemas/agent_db_app_public/tables/notifications/grants/authenticated/insert/grant


REVOKE INSERT ON agent_db_app_public.notifications FROM authenticated;


