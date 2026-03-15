-- Revert: schemas/agent_db_app_public/tables/contacts/constraints/contacts_entity_id_fkey/constraint


ALTER TABLE "agent_db_app_public".contacts 
  DROP CONSTRAINT contacts_entity_id_fkey;


