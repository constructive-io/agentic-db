-- Revert: schemas/agent_db_app_public/tables/documents/columns/parent_document_id/column


ALTER TABLE "agent_db_app_public".documents 
  DROP COLUMN parent_document_id RESTRICT;


