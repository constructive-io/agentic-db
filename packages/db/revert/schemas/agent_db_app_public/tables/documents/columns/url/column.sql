-- Revert: schemas/agent_db_app_public/tables/documents/columns/url/column


ALTER TABLE "agent_db_app_public".documents 
  DROP COLUMN url RESTRICT;


