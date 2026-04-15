-- Deploy: schemas/agentic_db_app_public/tables/deal_contacts/columns/contact_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/deal_contacts/table


ALTER TABLE "agentic_db_app_public".deal_contacts 
  ADD COLUMN contact_id uuid;

