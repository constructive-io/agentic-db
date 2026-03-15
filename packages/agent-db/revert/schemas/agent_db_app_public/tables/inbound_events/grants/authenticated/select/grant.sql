-- Revert: schemas/agent_db_app_public/tables/inbound_events/grants/authenticated/select/grant


REVOKE SELECT ON "agent_db_app_public".inbound_events FROM authenticated;


