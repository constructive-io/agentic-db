-- Revert: schemas/agent_db_app_public/tables/habits/grants/authenticated/select/grant


REVOKE SELECT ON "agent_db_app_public".habits FROM authenticated;


