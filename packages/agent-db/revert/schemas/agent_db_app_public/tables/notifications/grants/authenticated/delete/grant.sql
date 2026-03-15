-- Revert: schemas/agent_db_app_public/tables/notifications/grants/authenticated/delete/grant


REVOKE DELETE ON agent_db_app_public.notifications FROM authenticated;


