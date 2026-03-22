-- Deploy: schemas/agentic_db_app_public/tables/tool_definitions/columns/updated_at/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/tool_definitions/table
-- requires: schemas/agentic_db_app_public/tables/tool_definitions/policies/auth_del_entity_membership/policy


ALTER TABLE "agentic_db_app_public".tool_definitions 
  ADD COLUMN updated_at timestamptz;

