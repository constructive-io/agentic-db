-- Revert: schemas/agent_db_app_public/tables/memories/grants/authenticated/delete/grant


REVOKE DELETE ON "agent_db_app_public".memories FROM authenticated;


