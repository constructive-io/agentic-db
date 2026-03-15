-- Revert: schemas/agent_db_app_public/tables/event_venues/grants/authenticated/insert/grant


REVOKE INSERT ON agent_db_app_public.event_venues FROM authenticated;


