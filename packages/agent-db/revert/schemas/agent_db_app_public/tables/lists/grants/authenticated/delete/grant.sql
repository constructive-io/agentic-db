-- Revert: schemas/agent_db_app_public/tables/lists/grants/authenticated/delete/grant


REVOKE DELETE ON "agent_db_app_public".lists FROM authenticated;


