-- Revert: schemas/agent_db_app_public/tables/ideas/grants/authenticated/insert/grant


REVOKE INSERT ON "agent_db_app_public".ideas FROM authenticated;


