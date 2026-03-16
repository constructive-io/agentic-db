-- Revert: schemas/agent_db_app_public/tables/tags/grants/authenticated/update/grant


REVOKE UPDATE ON "agent_db_app_public".tags FROM authenticated;


