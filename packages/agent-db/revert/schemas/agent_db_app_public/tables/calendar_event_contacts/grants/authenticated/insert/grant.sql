-- Revert: schemas/agent_db_app_public/tables/calendar_event_contacts/grants/authenticated/insert/grant


REVOKE INSERT ON "agent_db_app_public".calendar_event_contacts FROM authenticated;


