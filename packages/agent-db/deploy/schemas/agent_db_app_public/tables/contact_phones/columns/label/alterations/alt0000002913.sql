-- Deploy: schemas/agent_db_app_public/tables/contact_phones/columns/label/alterations/alt0000002913
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/contact_phones/table
-- requires: schemas/agent_db_app_public/tables/contact_phones/columns/label/column
-- requires: schemas/agent_db_app_public/tables/contact_phones/columns/phone/alterations/alt0000002912



ALTER TABLE "agent_db_app_public".contact_phones 
    ALTER COLUMN label SET DEFAULT 'work';

