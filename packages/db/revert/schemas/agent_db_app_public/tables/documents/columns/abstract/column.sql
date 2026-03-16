-- Revert: schemas/agent_db_app_public/tables/documents/columns/abstract/column


ALTER TABLE "agent_db_app_public".documents 
  DROP COLUMN abstract RESTRICT;


