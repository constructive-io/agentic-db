-- Revert: schemas/agent_db_app_public/tables/notes/grants/authenticated/update/grant


REVOKE UPDATE ON "agent_db_app_public".notes FROM authenticated;


