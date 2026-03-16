-- Revert: schemas/agent_db_app_public/tables/memories/grants/authenticated/select/grant


REVOKE SELECT ON "agent_db_app_public".memories FROM authenticated;


