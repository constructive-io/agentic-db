-- Revert: schemas/agent_db_app_public/tables/repositories/grants/authenticated/delete/grant


REVOKE DELETE ON "agent_db_app_public".repositories FROM authenticated;


