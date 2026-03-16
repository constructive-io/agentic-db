-- Revert: schemas/agent_db_app_public/tables/notes/grants/authenticated/select/grant


REVOKE SELECT ON "agent_db_app_public".notes FROM authenticated;


