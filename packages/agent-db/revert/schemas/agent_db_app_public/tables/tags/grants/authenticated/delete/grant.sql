-- Revert: schemas/agent_db_app_public/tables/tags/grants/authenticated/delete/grant


REVOKE DELETE ON "agent_db_app_public".tags FROM authenticated;


