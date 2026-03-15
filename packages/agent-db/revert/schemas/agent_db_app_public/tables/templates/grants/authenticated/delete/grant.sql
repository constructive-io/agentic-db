-- Revert: schemas/agent_db_app_public/tables/templates/grants/authenticated/delete/grant


REVOKE DELETE ON "agent_db_app_public".templates FROM authenticated;


