-- Revert: schemas/agent_db_app_public/tables/events/grants/authenticated/delete/grant


REVOKE DELETE ON "agent_db_app_public".events FROM authenticated;


