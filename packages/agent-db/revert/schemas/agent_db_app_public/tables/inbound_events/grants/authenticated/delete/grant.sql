-- Revert: schemas/agent_db_app_public/tables/inbound_events/grants/authenticated/delete/grant


REVOKE DELETE ON "agent_db_app_public".inbound_events FROM authenticated;


