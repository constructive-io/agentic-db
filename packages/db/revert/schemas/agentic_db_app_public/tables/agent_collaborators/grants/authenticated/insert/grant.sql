-- Revert: schemas/agentic_db_app_public/tables/agent_collaborators/grants/authenticated/insert/grant


REVOKE INSERT ON "agentic_db_app_public".agent_collaborators FROM authenticated;


