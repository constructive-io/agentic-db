-- Revert: schemas/agent_db_app_public/tables/project_contacts/grants/authenticated/insert/grant


REVOKE INSERT ON "agent_db_app_public".project_contacts FROM authenticated;


