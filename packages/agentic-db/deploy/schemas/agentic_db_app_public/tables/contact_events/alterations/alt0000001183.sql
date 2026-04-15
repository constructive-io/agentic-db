-- Deploy: schemas/agentic_db_app_public/tables/contact_events/alterations/alt0000001183
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contact_events/table


ALTER TABLE "agentic_db_app_public".contact_events 
  DISABLE ROW LEVEL SECURITY;

