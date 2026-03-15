-- Deploy: schemas/agent_db_app_public/tables/ideas/columns/id/alterations/alt0000004692
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/ideas/table
-- requires: schemas/agent_db_app_public/tables/ideas/columns/id/column
-- requires: schemas/agent_db_app_public/tables/webhooks/constraints/webhooks_integration_id_fkey/constraint


ALTER TABLE "agent_db_app_public".ideas 
  ALTER COLUMN id SET NOT NULL;

