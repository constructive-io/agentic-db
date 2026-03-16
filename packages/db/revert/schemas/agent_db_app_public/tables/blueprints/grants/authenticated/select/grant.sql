-- Revert: schemas/agent_db_app_public/tables/blueprints/grants/authenticated/select/grant


REVOKE SELECT ON "agent_db_app_public".blueprints FROM authenticated;


