-- Revert: schemas/agent_db_app_public/tables/contact_phones/columns/id/alterations/alt0000002905


ALTER TABLE "agent_db_app_public".contact_phones 
  ALTER COLUMN id DROP NOT NULL;


