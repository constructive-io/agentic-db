-- Deploy: schemas/agentic_db_app_public/tables/deal_notes/alterations/alt0000002738
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/deal_notes/table
-- requires: schemas/agentic_db_app_public/tables/company_notes/policies/auth_del_entity_membership/policy


ALTER TABLE "agentic_db_app_public".deal_notes 
  DISABLE ROW LEVEL SECURITY;

