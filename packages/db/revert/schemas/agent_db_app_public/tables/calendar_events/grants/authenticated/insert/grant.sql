-- Revert: schemas/agent_db_app_public/tables/calendar_events/grants/authenticated/insert/grant


REVOKE INSERT ON "agent_db_app_public".calendar_events FROM authenticated;


