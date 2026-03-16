-- Revert: schemas/agent_db_app_public/tables/documents/columns/overview/column


ALTER TABLE "agent_db_app_public".documents 
  DROP COLUMN overview RESTRICT;


