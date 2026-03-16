-- Revert: schemas/agent_db_app_public/tables/interactions/grants/authenticated/select/grant


REVOKE SELECT ON "agent_db_app_public".interactions FROM authenticated;


