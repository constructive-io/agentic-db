-- Revert: schemas/agent_db_app_public/tables/files/grants/authenticated/insert/grant


REVOKE INSERT ON "agent_db_app_public".files FROM authenticated;


