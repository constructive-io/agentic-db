-- Revert: schemas/agentic_db_app_public/tables/contact_memories/grants/authenticated/insert/grant


REVOKE INSERT ON "agentic_db_app_public".contact_memories FROM authenticated;


