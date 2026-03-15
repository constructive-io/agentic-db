-- Revert: schemas/agent_db_app_public/tables/inbound_events/grants/authenticated/update/grant


REVOKE UPDATE ON "agent_db_app_public".inbound_events FROM authenticated;


