-- Revert: schemas/agent_db_app_public/tables/project_contacts/grants/authenticated/select/grant


REVOKE SELECT ON "agent_db_app_public".project_contacts FROM authenticated;


