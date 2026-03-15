-- Deploy: schemas/agent_db_app_public/tables/contact_phones/columns/phone/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/contact_phones/table
-- requires: schemas/agent_db_app_public/tables/contact_phones/columns/updated_at/alterations/alt0000002911


ALTER TABLE "agent_db_app_public".contact_phones 
  ADD COLUMN phone text;

