-- Deploy: schemas/agent_db_app_public/tables/attachments/columns/attachable_type/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/attachments/table
-- requires: schemas/agent_db_app_public/tables/attachments/columns/size_bytes/column


ALTER TABLE "agent_db_app_public".attachments 
  ADD COLUMN attachable_type text;

