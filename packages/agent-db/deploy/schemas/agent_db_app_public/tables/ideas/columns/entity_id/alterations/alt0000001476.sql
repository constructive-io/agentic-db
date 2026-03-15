-- Deploy: schemas/agent_db_app_public/tables/ideas/columns/entity_id/alterations/alt0000001476
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/ideas/table
-- requires: schemas/agent_db_app_public/tables/ideas/columns/entity_id/column
-- requires: schemas/agent_db_app_public/tables/webhooks/constraints/webhooks_integration_id_fkey/constraint


ALTER TABLE agent_db_app_public.ideas 
  ALTER COLUMN entity_id SET NOT NULL;

