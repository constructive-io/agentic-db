-- Revert: schemas/agent_db_app_public/tables/agents/grants/authenticated/delete/grant


REVOKE DELETE ON "agent_db_app_public".agents FROM authenticated;


