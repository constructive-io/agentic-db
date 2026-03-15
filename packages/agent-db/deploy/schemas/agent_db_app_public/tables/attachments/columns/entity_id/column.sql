-- Deploy: schemas/agent_db_app_public/tables/attachments/columns/entity_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/attachments/table
-- requires: schemas/agent_db_app_public/tables/tags/columns/usage_count/alterations/alt0000004155


ALTER TABLE "agent_db_app_public".attachments 
  ADD COLUMN entity_id uuid;

