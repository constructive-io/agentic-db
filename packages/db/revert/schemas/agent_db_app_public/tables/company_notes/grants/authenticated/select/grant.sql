-- Revert: schemas/agent_db_app_public/tables/company_notes/grants/authenticated/select/grant


REVOKE SELECT ON "agent_db_app_public".company_notes FROM authenticated;


