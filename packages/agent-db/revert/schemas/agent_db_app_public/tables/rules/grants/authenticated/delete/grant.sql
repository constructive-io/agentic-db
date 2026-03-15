-- Revert: schemas/agent_db_app_public/tables/rules/grants/authenticated/delete/grant


REVOKE DELETE ON "agent_db_app_public".rules FROM authenticated;


