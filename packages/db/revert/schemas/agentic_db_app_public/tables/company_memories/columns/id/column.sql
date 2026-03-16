-- Revert: schemas/agentic_db_app_public/tables/company_memories/columns/id/column


ALTER TABLE "agentic_db_app_public".company_memories 
  DROP COLUMN id RESTRICT;


