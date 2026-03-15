-- Deploy: schemas/agent_db_app_public/tables/trips/policies/enable_row_level_security
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/trips/table
-- requires: schemas/agent_db_app_public/tables/billing_subscriptions/columns/notes/column


ALTER TABLE agent_db_app_public.trips 
  ENABLE ROW LEVEL SECURITY;

