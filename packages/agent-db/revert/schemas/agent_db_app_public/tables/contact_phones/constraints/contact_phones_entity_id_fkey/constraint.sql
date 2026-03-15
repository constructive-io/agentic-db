-- Revert: schemas/agent_db_app_public/tables/contact_phones/constraints/contact_phones_entity_id_fkey/constraint


ALTER TABLE "agent_db_app_public".contact_phones 
  DROP CONSTRAINT contact_phones_entity_id_fkey;


