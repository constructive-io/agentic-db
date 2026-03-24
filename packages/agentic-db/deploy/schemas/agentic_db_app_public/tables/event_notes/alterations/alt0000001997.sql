-- Deploy: schemas/agentic_db_app_public/tables/event_notes/alterations/alt0000001997
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/event_notes/table
-- requires: schemas/agentic_db_app_public/tables/deal_notes/policies/auth_del_entity_membership/policy


ALTER TABLE "agentic_db_app_public".event_notes 
  DISABLE ROW LEVEL SECURITY;

