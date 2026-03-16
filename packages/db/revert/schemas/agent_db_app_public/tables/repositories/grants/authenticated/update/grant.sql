-- Revert: schemas/agent_db_app_public/tables/repositories/grants/authenticated/update/grant


REVOKE UPDATE ON "agent_db_app_public".repositories FROM authenticated;


