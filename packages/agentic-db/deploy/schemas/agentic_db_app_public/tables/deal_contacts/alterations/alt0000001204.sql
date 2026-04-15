-- Deploy: schemas/agentic_db_app_public/tables/deal_contacts/alterations/alt0000001204
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/deal_contacts/table


ALTER TABLE "agentic_db_app_public".deal_contacts 
  DISABLE ROW LEVEL SECURITY;

