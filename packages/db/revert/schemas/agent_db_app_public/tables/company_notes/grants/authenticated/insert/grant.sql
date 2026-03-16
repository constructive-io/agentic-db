-- Revert: schemas/agent_db_app_public/tables/company_notes/grants/authenticated/insert/grant


REVOKE INSERT ON "agent_db_app_public".company_notes FROM authenticated;


