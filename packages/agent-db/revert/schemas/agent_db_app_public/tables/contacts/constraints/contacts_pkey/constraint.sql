-- Revert: schemas/agent_db_app_public/tables/contacts/constraints/contacts_pkey/constraint


ALTER TABLE "agent_db_app_public".contacts 
  DROP CONSTRAINT contacts_pkey;


