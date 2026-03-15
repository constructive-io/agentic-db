-- Revert: schemas/agent_db_app_public/tables/agent_skills/grants/authenticated/insert/grant


REVOKE INSERT ON "agent_db_app_public".agent_skills FROM authenticated;


