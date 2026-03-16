-- Revert: schemas/agent_db_app_public/tables/notes/grants/authenticated/delete/grant


REVOKE DELETE ON "agent_db_app_public".notes FROM authenticated;


