-- Deploy: schemas/agent_db_app_public/tables/feedback/columns/id/alterations/alt0000001119
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/feedback/table
-- requires: schemas/agent_db_app_public/tables/feedback/columns/id/column
-- requires: schemas/agent_db_app_public/tables/skill_executions/columns/error/column


ALTER TABLE agent_db_app_public.feedback 
  ALTER COLUMN id SET NOT NULL;

