-- Deploy: schemas/agent_db_app_public/tables/feedback/columns/target_id/alterations/alt0000001127
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/feedback/table
-- requires: schemas/agent_db_app_public/tables/feedback/columns/target_id/column
-- requires: schemas/agent_db_app_public/tables/feedback/columns/target_type/alterations/alt0000001126


ALTER TABLE agent_db_app_public.feedback 
  ALTER COLUMN target_id SET NOT NULL;

