-- Revert: schemas/agent_db_app_public/tables/company_memories/grants/authenticated/delete/grant


REVOKE DELETE ON "agent_db_app_public".company_memories FROM authenticated;


