-- Revert: schemas/agent_db_app_public/tables/projects/grants/authenticated/select/grant


REVOKE SELECT ON "agent_db_app_public".projects FROM authenticated;


