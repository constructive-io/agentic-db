-- Revert: schemas/agentic_db_app_public/tables/project_contacts/constraints/project_contacts_pkey/constraint


ALTER TABLE agentic_db_app_public.project_contacts 
  DROP CONSTRAINT project_contacts_pkey;


