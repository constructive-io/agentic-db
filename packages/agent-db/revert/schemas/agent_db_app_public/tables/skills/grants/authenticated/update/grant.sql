-- Revert: schemas/agent_db_app_public/tables/skills/grants/authenticated/update/grant


REVOKE UPDATE ON "agent_db_app_public".skills FROM authenticated;


