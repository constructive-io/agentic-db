-- Deploy: schemas/agentic_db_app_public/tables/event_chunks/alterations/alt0000001812
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/event_chunks/table
-- requires: schemas/agentic_db_app_public/tables/deal_chunks/columns/embedding/column


ALTER TABLE "agentic_db_app_public".event_chunks 
  DISABLE ROW LEVEL SECURITY;

