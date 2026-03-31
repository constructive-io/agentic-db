-- Revert: schemas/agentic_db_app_public/tables/company_memories/constraints/company_memories_pkey/constraint


ALTER TABLE "agentic_db_app_public".company_memories 
  DROP CONSTRAINT company_memories_pkey;


