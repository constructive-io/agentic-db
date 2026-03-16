-- Revert: schemas/agent_db_app_public/tables/documents/columns/id/column


ALTER TABLE "agent_db_app_public".documents 
  DROP COLUMN id RESTRICT;


