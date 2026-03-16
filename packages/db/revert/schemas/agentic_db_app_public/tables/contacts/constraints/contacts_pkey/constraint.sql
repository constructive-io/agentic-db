-- Revert: schemas/agentic_db_app_public/tables/contacts/constraints/contacts_pkey/constraint


ALTER TABLE "agentic_db_app_public".contacts 
  DROP CONSTRAINT contacts_pkey;


