-- Revert: schemas/agent_db_app_public/tables/event_links/grants/authenticated/update/grant


REVOKE UPDATE ON agent_db_app_public.event_links FROM authenticated;


