-- Deploy: schemas/agentic_db_app_public/tables/contact_phones/columns/id/alterations/alt0000001081
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contact_phones/table
-- requires: schemas/agentic_db_app_public/tables/contact_phones/columns/id/column


ALTER TABLE "agentic_db_app_public".contact_phones 
  ALTER COLUMN id SET NOT NULL;

