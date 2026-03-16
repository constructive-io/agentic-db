-- Revert: schemas/agent_db_app_public/tables/deal_contacts/constraints/deal_contacts_pkey/constraint


ALTER TABLE "agent_db_app_public".deal_contacts 
  DROP CONSTRAINT deal_contacts_pkey;


