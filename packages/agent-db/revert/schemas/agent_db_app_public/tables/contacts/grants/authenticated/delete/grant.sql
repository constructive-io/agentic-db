-- Revert: schemas/agent_db_app_public/tables/contacts/grants/authenticated/delete/grant


REVOKE DELETE ON "agent_db_app_public".contacts FROM authenticated;


