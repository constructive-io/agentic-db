-- Deploy: schemas/agentic_db_app_public/tables/ideas/alterations/alt0000001439
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/ideas/table
-- requires: schemas/agentic_db_app_public/tables/webhooks/constraints/webhooks_integration_id_fkey/constraint


ALTER TABLE "agentic_db_app_public".ideas 
  DISABLE ROW LEVEL SECURITY;

