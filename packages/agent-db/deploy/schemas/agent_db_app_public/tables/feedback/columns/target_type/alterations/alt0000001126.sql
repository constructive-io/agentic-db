-- Deploy: schemas/agent_db_app_public/tables/feedback/columns/target_type/alterations/alt0000001126
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/feedback/table
-- requires: schemas/agent_db_app_public/tables/feedback/columns/target_type/column
-- requires: schemas/agent_db_app_public/tables/feedback/columns/updated_at/alterations/alt0000001125


ALTER TABLE agent_db_app_public.feedback 
  ALTER COLUMN target_type SET NOT NULL;

