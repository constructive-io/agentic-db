-- Revert: schemas/agent_db_app_public/tables/expense_contacts/grants/authenticated/select/grant


REVOKE SELECT ON "agent_db_app_public".expense_contacts FROM authenticated;


