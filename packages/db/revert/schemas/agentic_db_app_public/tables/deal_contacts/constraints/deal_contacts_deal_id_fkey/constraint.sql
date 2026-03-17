-- Revert: schemas/agentic_db_app_public/tables/deal_contacts/constraints/deal_contacts_deal_id_fkey/constraint


ALTER TABLE "agentic_db_app_public".deal_contacts 
  DROP CONSTRAINT deal_contacts_deal_id_fkey;


