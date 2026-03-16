-- Revert: schemas/agent_db_app_public/tables/files/grants/authenticated/update/grant


REVOKE UPDATE ON "agent_db_app_public".files FROM authenticated;


