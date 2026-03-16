-- Revert: schemas/agent_db_app_public/tables/tools/grants/authenticated/delete/grant


REVOKE DELETE ON "agent_db_app_public".tools FROM authenticated;


