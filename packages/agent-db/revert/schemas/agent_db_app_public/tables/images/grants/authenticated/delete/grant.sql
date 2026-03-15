-- Revert: schemas/agent_db_app_public/tables/images/grants/authenticated/delete/grant


REVOKE DELETE ON "agent_db_app_public".images FROM authenticated;


