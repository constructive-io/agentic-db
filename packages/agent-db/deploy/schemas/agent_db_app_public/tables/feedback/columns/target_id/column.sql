-- Deploy: schemas/agent_db_app_public/tables/feedback/columns/target_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/feedback/table
-- requires: schemas/agent_db_app_public/tables/feedback/columns/target_type/alterations/alt0000004344


ALTER TABLE "agent_db_app_public".feedback 
  ADD COLUMN target_id uuid;

