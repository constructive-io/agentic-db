-- Revert: schemas/agent_db_app_public/tables/skills/grants/authenticated/insert/grant


REVOKE INSERT ON "agent_db_app_public".skills FROM authenticated;


