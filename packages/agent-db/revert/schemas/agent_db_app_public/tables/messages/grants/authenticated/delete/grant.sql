-- Revert: schemas/agent_db_app_public/tables/messages/grants/authenticated/delete/grant


REVOKE DELETE ON "agent_db_app_public".messages FROM authenticated;


