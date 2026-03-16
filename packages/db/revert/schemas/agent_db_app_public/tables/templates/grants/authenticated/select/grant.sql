-- Revert: schemas/agent_db_app_public/tables/templates/grants/authenticated/select/grant


REVOKE SELECT ON "agent_db_app_public".templates FROM authenticated;


