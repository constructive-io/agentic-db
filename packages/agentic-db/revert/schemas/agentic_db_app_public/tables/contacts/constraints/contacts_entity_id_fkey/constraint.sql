-- Revert: schemas/agentic_db_app_public/tables/contacts/constraints/contacts_entity_id_fkey/constraint


ALTER TABLE "agentic_db_app_public".contacts 
  DROP CONSTRAINT contacts_entity_id_fkey;


