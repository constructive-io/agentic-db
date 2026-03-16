-- Revert: schemas/agent_db_app_public/tables/events/grants/authenticated/insert/grant


REVOKE INSERT ON "agent_db_app_public".events FROM authenticated;


