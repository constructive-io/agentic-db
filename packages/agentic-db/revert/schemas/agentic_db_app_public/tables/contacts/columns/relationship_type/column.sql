-- Revert: schemas/agentic_db_app_public/tables/contacts/columns/relationship_type/column


ALTER TABLE "agentic_db_app_public".contacts 
  DROP COLUMN relationship_type RESTRICT;


