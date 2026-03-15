-- Revert: schemas/agent_db_app_public/tables/contacts/columns/relationship_type/column


ALTER TABLE agent_db_app_public.contacts 
  DROP COLUMN relationship_type RESTRICT;


