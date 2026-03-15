-- Deploy: schemas/agent_db_app_public/tables/ideas/policies/enable_row_level_security
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/ideas/table
-- requires: schemas/agent_db_app_public/tables/webhooks/constraints/webhooks_integration_id_fkey/constraint


ALTER TABLE agent_db_app_public.ideas 
  ENABLE ROW LEVEL SECURITY;

