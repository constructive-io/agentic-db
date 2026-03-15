-- Revert: schemas/agent_db_app_public/tables/venues/grants/authenticated/insert/grant


REVOKE INSERT ON "agent_db_app_public".venues FROM authenticated;


