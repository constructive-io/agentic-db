-- Revert: schemas/agent_db_app_public/tables/memories/grants/authenticated/update/grant


REVOKE UPDATE ON "agent_db_app_public".memories FROM authenticated;


