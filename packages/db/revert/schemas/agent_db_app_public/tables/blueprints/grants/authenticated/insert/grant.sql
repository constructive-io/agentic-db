-- Revert: schemas/agent_db_app_public/tables/blueprints/grants/authenticated/insert/grant


REVOKE INSERT ON "agent_db_app_public".blueprints FROM authenticated;


