-- Deploy: schemas/agent_db_app_public/tables/contact_phones/columns/is_primary/alterations/alt0000002914
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/contact_phones/table
-- requires: schemas/agent_db_app_public/tables/contact_phones/columns/is_primary/column
-- requires: schemas/agent_db_app_public/tables/contact_phones/columns/label/alterations/alt0000002913



ALTER TABLE "agent_db_app_public".contact_phones 
    ALTER COLUMN is_primary SET DEFAULT false;

