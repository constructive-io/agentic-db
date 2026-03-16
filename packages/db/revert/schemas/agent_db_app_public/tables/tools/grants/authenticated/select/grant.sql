-- Revert: schemas/agent_db_app_public/tables/tools/grants/authenticated/select/grant


REVOKE SELECT ON "agent_db_app_public".tools FROM authenticated;


