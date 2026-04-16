-- Revert: schemas/agentic_db_app_public/tables/contacts/columns/relationship_types/column


ALTER TABLE agentic_db_app_public.contacts 
  DROP COLUMN relationship_types RESTRICT;


