-- Revert: schemas/agentic_db_app_public/tables/agents/columns/role/column


ALTER TABLE "agentic_db_app_public".agents 
  DROP COLUMN role RESTRICT;


