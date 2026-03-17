-- Revert: schemas/agentic_db_app_public/tables/documents/constraints/documents_entity_id_fkey/constraint


ALTER TABLE "agentic_db_app_public".documents 
  DROP CONSTRAINT documents_entity_id_fkey;


