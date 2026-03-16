-- Revert: schemas/agent_db_app_public/tables/calendar_event_contacts/grants/authenticated/delete/grant


REVOKE DELETE ON "agent_db_app_public".calendar_event_contacts FROM authenticated;


