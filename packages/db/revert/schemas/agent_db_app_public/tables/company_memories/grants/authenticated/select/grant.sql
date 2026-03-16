-- Revert: schemas/agent_db_app_public/tables/company_memories/grants/authenticated/select/grant


REVOKE SELECT ON "agent_db_app_public".company_memories FROM authenticated;


