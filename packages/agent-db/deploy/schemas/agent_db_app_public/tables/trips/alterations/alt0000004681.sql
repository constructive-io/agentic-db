-- Deploy: schemas/agent_db_app_public/tables/trips/alterations/alt0000004681
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/trips/table
-- requires: schemas/agent_db_app_public/tables/billing_subscriptions/columns/notes/column


ALTER TABLE "agent_db_app_public".trips 
  DISABLE ROW LEVEL SECURITY;

