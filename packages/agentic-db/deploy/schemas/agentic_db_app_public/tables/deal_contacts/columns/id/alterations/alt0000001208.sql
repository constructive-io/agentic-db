-- Deploy: schemas/agentic_db_app_public/tables/deal_contacts/columns/id/alterations/alt0000001208
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/deal_contacts/table
-- requires: schemas/agentic_db_app_public/tables/deal_contacts/columns/id/column


ALTER TABLE "agentic_db_app_public".deal_contacts 
  ALTER COLUMN id SET NOT NULL;

