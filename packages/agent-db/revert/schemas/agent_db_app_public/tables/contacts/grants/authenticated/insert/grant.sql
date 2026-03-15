-- Revert: schemas/agent_db_app_public/tables/contacts/grants/authenticated/insert/grant


REVOKE INSERT ON "agent_db_app_public".contacts FROM authenticated;


