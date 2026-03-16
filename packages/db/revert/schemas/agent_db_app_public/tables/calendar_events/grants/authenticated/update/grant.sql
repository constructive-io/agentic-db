-- Revert: schemas/agent_db_app_public/tables/calendar_events/grants/authenticated/update/grant


REVOKE UPDATE ON "agent_db_app_public".calendar_events FROM authenticated;


