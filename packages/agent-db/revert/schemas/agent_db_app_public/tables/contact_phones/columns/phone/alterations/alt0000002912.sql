-- Revert: schemas/agent_db_app_public/tables/contact_phones/columns/phone/alterations/alt0000002912


ALTER TABLE "agent_db_app_public".contact_phones 
  ALTER COLUMN phone DROP NOT NULL;


